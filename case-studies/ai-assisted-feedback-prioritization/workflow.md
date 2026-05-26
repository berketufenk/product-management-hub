---
title: AI-Assisted Feedback Prioritization Workflow
type: workflow
status: human-review-required
scenario: simulated
---

# Workflow: Feedback To Accountable Decision

```mermaid
flowchart LR
    A["Synthetic or anonymized feedback inputs"] --> B["Normalize source and workflow context"]
    B --> C["AI suggests problem themes and confidence"]
    C --> D["Human sample review and reassignment"]
    D -->|"Accepted evidence"| E["Theme evidence card by segment"]
    D -->|"Unclear evidence"| F["Unclassified review queue"]
    E --> G["PM prioritization review"]
    G --> H["Prioritize discovery"]
    G --> I["Defer or reject with rationale"]
    G --> J["Request further evidence"]
```

## Operating Notes

- Raw customer text is not required in a public artifact; synthetic or anonymized summaries are sufficient for demonstrating the workflow.
- AI output remains inspectable through confidence, source coverage, and reassignment tracking.
- A human product owner records the decision and its constraints before any roadmap treatment.
