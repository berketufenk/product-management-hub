-- Feature Adoption Agent: account-level adoption classification
-- Scenario: simulated B2B SaaS workflow feature
-- Dialect: PostgreSQL
-- Assumed tables:
--   accounts(account_id, plan_tier, employee_band, eligible_at)
--   product_events(account_id, user_id, event_name, occurred_at)

WITH eligible_accounts AS (
    SELECT
        account_id,
        plan_tier,
        employee_band,
        eligible_at
    FROM accounts
    WHERE eligible_at >= DATE '2026-04-01'
),
workflow_events AS (
    SELECT
        e.account_id,
        e.user_id,
        e.event_name,
        e.occurred_at,
        MIN(CASE WHEN e.event_name = 'workflow_created' THEN e.occurred_at END)
            OVER (PARTITION BY e.account_id) AS first_created_at
    FROM product_events e
    INNER JOIN eligible_accounts a USING (account_id)
    WHERE e.event_name IN (
        'feature_viewed',
        'workflow_created',
        'workflow_run_started',
        'workflow_approved',
        'workflow_abandoned'
    )
),
observation_window AS (
    SELECT *
    FROM workflow_events
    WHERE first_created_at IS NOT NULL
      AND occurred_at >= first_created_at
      AND occurred_at < first_created_at + INTERVAL '14 days'
),
account_rollup AS (
    SELECT
        a.account_id,
        a.plan_tier,
        a.employee_band,
        MIN(w.first_created_at) AS first_created_at,
        COUNT(*) FILTER (WHERE w.event_name = 'workflow_created') AS workflows_created,
        COUNT(*) FILTER (WHERE w.event_name = 'workflow_run_started') AS runs_started,
        COUNT(*) FILTER (WHERE w.event_name = 'workflow_approved') AS approvals,
        COUNT(DISTINCT w.user_id) FILTER (WHERE w.event_name = 'workflow_approved') AS approving_users,
        COUNT(DISTINCT DATE(w.occurred_at)) FILTER (WHERE w.event_name = 'workflow_approved') AS approval_days
    FROM eligible_accounts a
    LEFT JOIN observation_window w USING (account_id)
    GROUP BY a.account_id, a.plan_tier, a.employee_band
),
classified AS (
    SELECT
        *,
        CASE
            WHEN first_created_at IS NULL THEN 'exposed_not_started'
            WHEN approvals >= 3 AND approving_users >= 2 AND approval_days >= 2 THEN 'adopted'
            WHEN approvals >= 1 THEN 'activated_not_adopted'
            WHEN runs_started >= 1 THEN 'started_no_completion'
            ELSE 'configured_not_run'
        END AS adoption_stage
    FROM account_rollup
)
SELECT
    plan_tier,
    employee_band,
    adoption_stage,
    COUNT(*) AS accounts,
    ROUND(
        COUNT(*)::numeric / NULLIF(SUM(COUNT(*)) OVER (PARTITION BY plan_tier, employee_band), 0),
        3
    ) AS segment_share
FROM classified
GROUP BY plan_tier, employee_band, adoption_stage
ORDER BY plan_tier, employee_band, accounts DESC;

-- Follow-up review query: return accounts that began setup without first value.
-- SELECT account_id, plan_tier, employee_band, first_created_at, runs_started
-- FROM classified
-- WHERE adoption_stage = 'started_no_completion'
-- ORDER BY first_created_at;
