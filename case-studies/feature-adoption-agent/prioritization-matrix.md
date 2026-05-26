---
title: Feature Adoption Agent Prioritization Matrix
type: prioritization-matrix
status: human-review-required
scenario: simulated
---

# Prioritization Matrix

Scoring scale: `1` low to `5` high. Scores are illustrative for the simulated scenario and exist to show decision logic, not validated business impact.

| Candidate initiative | User/problem impact | Evidence confidence | Learning value | Delivery effort | Risk if wrong | Recommended sequence |
| --- | ---: | ---: | ---: | ---: | ---: | --- |
| Confirm event schema and completeness checks | 4 | 5 | 5 | 2 | 5 | 1 - establish reliable measurement |
| Weekly account-level exception report | 4 | 4 | 5 | 3 | 2 | 2 - enable structured review |
| Admin setup-friction interviews | 4 | 3 | 5 | 2 | 1 | 3 - explain observed stalls |
| Contextual onboarding guidance | 3 | 2 | 3 | 3 | 3 | 4 - only after root cause evidence |
| Automated outreach to stalled accounts | 2 | 1 | 2 | 4 | 5 | Not in initial scope |

## Recommendation

Start with trustworthy instrumentation and a reviewable exception report. Use the resulting patterns to choose qualitative follow-up. Do not prioritize customer-facing automation until the product team can explain both adoption and false-positive behavior.
