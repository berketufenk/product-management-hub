# Metric Definitions For Portfolio Cases

These definitions provide a shared analytical language for simulated B2B SaaS cases. A case may narrow or revise a metric when its workflow requires different behavior.

| Metric | Working definition | Common caution |
| --- | --- | --- |
| Eligible account | An account with access and a valid opportunity to use the capability during the measurement window | Do not include accounts without access in denominator. |
| Activation | First successful completion of the feature's primary job by an eligible account | First success does not prove retained value. |
| Adoption | Repeated successful usage meeting a stated account-level threshold and time window | Threshold must reflect workflow cadence. |
| Time to first value | Time from eligibility or setup start to first successful outcome | Instrumentation gaps may appear as delay. |
| Exception | A defined behavior pattern requiring human review, such as started without completion | It is a review candidate, not a diagnosis. |
| Evidence-backed decision | A product decision recorded with source coverage, assumptions, and rationale | Volume alone is not sufficient evidence. |

## Measurement Practice

- Define denominator, observation window, segment, and success event before interpreting a metric.
- Pair aggregate metrics with segment and workflow context.
- Treat missing evidence as uncertainty, not negative performance.
- Keep modeled or synthetic values explicitly separate from real observations.
