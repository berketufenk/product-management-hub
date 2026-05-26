-- AI-Assisted Feedback Prioritization: evidence summary by theme
-- Scenario: simulated B2B SaaS product operations case
-- Dialect: PostgreSQL
-- Assumed tables:
--   feedback_items(item_id, account_id, source_type, workflow_area, received_at)
--   accounts(account_id, segment, plan_tier, arr_band)
--   theme_assignments(item_id, theme_id, proposed_confidence, review_status)
--   themes(theme_id, theme_name, strategic_pillar)

WITH reviewed_assignments AS (
    SELECT
        f.item_id,
        f.account_id,
        f.source_type,
        f.workflow_area,
        f.received_at,
        ta.theme_id,
        ta.proposed_confidence
    FROM feedback_items f
    INNER JOIN theme_assignments ta USING (item_id)
    WHERE ta.review_status = 'accepted'
      AND f.received_at >= CURRENT_DATE - INTERVAL '90 days'
),
theme_evidence AS (
    SELECT
        t.theme_id,
        t.theme_name,
        t.strategic_pillar,
        a.segment,
        COUNT(ra.item_id) AS feedback_records,
        COUNT(DISTINCT ra.account_id) AS affected_accounts,
        COUNT(DISTINCT ra.source_type) AS source_types,
        ROUND(AVG(ra.proposed_confidence), 2) AS avg_assignment_confidence,
        MIN(ra.received_at) AS earliest_signal_at,
        MAX(ra.received_at) AS latest_signal_at
    FROM reviewed_assignments ra
    INNER JOIN themes t USING (theme_id)
    INNER JOIN accounts a USING (account_id)
    GROUP BY t.theme_id, t.theme_name, t.strategic_pillar, a.segment
),
theme_totals AS (
    SELECT
        *,
        SUM(affected_accounts) OVER (PARTITION BY theme_id) AS total_affected_accounts,
        SUM(feedback_records) OVER (PARTITION BY theme_id) AS total_feedback_records
    FROM theme_evidence
),
ranked_for_review AS (
    SELECT
        *,
        DENSE_RANK() OVER (ORDER BY total_affected_accounts DESC) AS breadth_rank
    FROM theme_totals
)
SELECT
    theme_name,
    strategic_pillar,
    segment,
    feedback_records,
    affected_accounts,
    source_types,
    avg_assignment_confidence,
    total_affected_accounts,
    total_feedback_records,
    ROUND(total_feedback_records::numeric / NULLIF(total_affected_accounts, 0), 2)
        AS records_per_account,
    breadth_rank,
    earliest_signal_at,
    latest_signal_at
FROM ranked_for_review
ORDER BY breadth_rank, theme_name, affected_accounts DESC;

-- This query intentionally does not output a roadmap priority.
-- A reviewer should combine evidence breadth, problem severity,
-- strategic fit, delivery effort, and uncertainty in the decision record.
