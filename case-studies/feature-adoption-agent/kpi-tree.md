---
title: Feature Adoption Agent KPI Tree
type: metric-model
status: human-review-required
scenario: simulated
---

# KPI Tree: Meaningful Workflow Adoption

## Outcome Metric

**Adopted account rate**: percentage of eligible accounts meeting the documented adoption definition within 14 days of first workflow creation.

```text
Meaningful feature adoption
├── Reach and setup
│   ├── Eligible accounts exposed
│   ├── Workflow creation rate
│   └── Median time to first workflow creation
├── Successful usage
│   ├── Activation rate
│   ├── Adopted account rate
│   └── Repeat completion days per account
├── Friction signals
│   ├── Setup abandonment rate
│   ├── Started-without-completion accounts
│   └── Time from first start to first approval
└── Operating quality
    ├── Event completeness rate
    ├── Exceptions reviewed within seven days
    └── False-positive exception rate after review
```

## Metric Definitions

| Metric | Definition | Decision supported |
| --- | --- | --- |
| Workflow creation rate | Accounts with `workflow_created` / eligible accounts exposed | Is setup discoverable enough to begin? |
| Activation rate | Accounts with one approved workflow / accounts with a workflow created | Are configured workflows capable of reaching first value? |
| Adopted account rate | Accounts satisfying the three-part adoption rule / eligible accounts | Is usage becoming repeatable at the account level? |
| Setup abandonment rate | Accounts with a started run and no approval within 14 days / started accounts | Is workflow setup or first execution causing friction? |
| Event completeness rate | Expected key event types observed / required event types in analysis window | Can the report support decisions safely? |
| False-positive exception rate | Reviewed exceptions marked not actionable / reviewed exceptions | Is agent output useful rather than noisy? |

## Segmentation Requirements

All outcome and friction metrics should be viewable by:

- plan tier: standard, professional, enterprise
- account size band: 1-25, 26-100, 101+
- account age: new implementation, established account
- primary configured role: administrator, operations manager

## Interpretation Boundary

A low adoption rate does not identify a root cause. It creates a reason to inspect setup data, customer context, product usability, and enablement before a decision is made.
