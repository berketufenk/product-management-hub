---
title: Feature Adoption Agent Workflow
type: workflow
status: human-review-required
scenario: simulated
---

# Workflow: Adoption Exception Review

```mermaid
flowchart LR
    A["Product events and eligible account attributes"] --> B["Metric validation and completeness check"]
    B -->|"Evidence sufficient"| C["Account-stage classification"]
    B -->|"Evidence incomplete"| D["Data quality backlog"]
    C --> E["Weekly exception list by segment"]
    E --> F["PM and CS review"]
    F --> G["Interview or enablement follow-up"]
    F --> H["Instrumentation or product hypothesis"]
    F --> I["No action with recorded reason"]
```

## Operating Notes

- The workflow produces review candidates, not automatic customer actions.
- Data-quality findings enter their own backlog rather than being interpreted as failed adoption.
- Review outcomes should inform the false-positive metric and the next revision of classification rules.
