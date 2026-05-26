---
title: AI-Assisted Feedback Prioritization KPI Tree
type: metric-model
status: human-review-required
scenario: simulated
---

# KPI Tree: Decision-Ready Feedback Evidence

## Outcome Metric

**Evidence-backed decision rate**: percentage of reviewed candidate themes that result in an explicit decision (`investigate`, `prioritize`, `defer`, or `reject`) with recorded rationale and source coverage.

```text
Decision-ready feedback evidence
├── Signal coverage
│   ├── Feedback records processed
│   ├── Accounts represented by source and segment
│   └── Unclassified record rate
├── Theme quality
│   ├── Theme reassignment rate after human review
│   ├── Duplicate-account compression ratio
│   └── Sampled evidence agreement rate
├── Decision usefulness
│   ├── Evidence-backed decision rate
│   ├── Median time from signal intake to review decision
│   └── Themes escalated to discovery
└── Governance
    ├── Decisions with documented rationale
    ├── Themes with reviewed sensitive-data handling
    └── Automated recommendations published without review (target: zero)
```

## Metric Definitions

| Metric | Definition | Why it matters |
| --- | --- | --- |
| Unclassified record rate | Records without an accepted theme / processed records | High values show the taxonomy or model needs revision. |
| Theme reassignment rate | AI-proposed assignments changed by reviewer / assignments reviewed | Measures grouping reliability without implying decision quality. |
| Duplicate-account compression ratio | Feedback records / unique affected accounts per theme | Prevents repeated tickets from being read as broad demand. |
| Evidence-backed decision rate | Themes with decision, rationale, and reviewed evidence / themes reviewed | Ensures review produces accountable outcomes. |
| Median decision latency | Days between earliest signal in theme and recorded review decision | Shows whether organization is responding to evidence promptly. |

## Guardrail Metric

**Automated roadmap commitments without review: `0`.** AI-supported synthesis can accelerate preparation; it must not create commitments without product ownership.
