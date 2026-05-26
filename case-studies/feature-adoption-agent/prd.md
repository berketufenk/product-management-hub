---
title: Feature Adoption Agent PRD
type: prd
status: human-review-required
scenario: simulated
---

# PRD: Feature Adoption Agent

## Problem

The product team cannot reliably distinguish feature exploration from durable adoption. A weekly total usage chart hides rollout friction by account segment, administrator setup failures, and accounts that try the workflow once but do not return.

## Users

| User | Job to be done |
| --- | --- |
| Product manager | Identify material adoption gaps and decide what investigation or product change is justified. |
| Customer success lead | Understand which accounts may need a contextual follow-up after PM review. |
| Product analyst | Maintain metric logic and validate event quality. |

## Proposed Capability

Generate a weekly, review-only adoption exception report for a newly released approval automation feature. The report classifies eligible accounts into stages based on observable behavior and exposes the supporting events.

## Adoption Definition

An eligible account is considered **adopted** when, within 14 days of its first workflow creation:

1. At least two distinct users complete an approved workflow.
2. At least three approved workflows are completed.
3. Completion happens on at least two distinct days.

This definition is a hypothesis for review, not a universal SaaS benchmark.

## Functional Requirements

| Requirement | Acceptance note |
| --- | --- |
| Segment eligible accounts by plan tier and account size | Every reported metric supports segment filtering. |
| Classify account stage: exposed, started, activated, adopted, stalled | Each stage is derived from documented event rules. |
| Generate weekly exception list | Report includes account identifier, stage, evidence window, and reason code. |
| Show evidence behind each classification | Reviewer can trace classification to event aggregates. |
| Mark data-quality gaps | Missing or delayed events are not treated as non-adoption. |

## Non-Goals

- Sending automated messages to customer accounts
- Changing onboarding or feature access without review
- Predicting churn or expansion revenue
- Replacing interviews or customer success context

## Event Inputs

| Event | Meaning |
| --- | --- |
| `feature_viewed` | Eligible user opened the feature surface. |
| `workflow_created` | A user configured an approval workflow. |
| `workflow_run_started` | An approval process began. |
| `workflow_approved` | A run completed successfully. |
| `workflow_abandoned` | A started run was abandoned or timed out. |

## Risks And Safeguards

| Risk | Safeguard |
| --- | --- |
| Bad instrumentation creates misleading exception lists | Add event completeness checks and suppress classifications where evidence is insufficient. |
| High-value accounts receive unwanted automated attention | Keep output review-only; customer contact is owned by a human. |
| Adoption definition favors larger accounts | Report results by segment and revisit thresholds after qualitative review. |
| Monitoring turns into surveillance of individuals | Report at account/role aggregate level, not employee performance level. |

## Review Gate

Before use in any real product context, event definitions, privacy requirements, segment thresholds, and customer-contact procedures require human validation.
