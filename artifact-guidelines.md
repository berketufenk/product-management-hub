# Artifact Guidelines

## Portfolio Intent

Artifacts in Product AI Lab should show how a product decision is formed, measured, challenged, and reviewed. The repository is not a volume publishing channel and should not present unedited model output as portfolio work.

## Required Metadata For Case Artifacts

Use concise frontmatter in each case-level Markdown artifact:

```yaml
---
title: Clear artifact title
type: case-study | prd | metric-model | decision-log | prioritization-matrix | workflow
status: human-review-required | reviewed
scenario: simulated | anonymized
domain: optional-domain-slug
---
```

## Case Study Package

A flagship case should normally include:

| Artifact | Expected signal |
| --- | --- |
| `README.md` | Context, product question, approach, and artifact map |
| `prd.md` | Problem, users, scope, non-goals, risks, review gate |
| `kpi-tree.md` | Outcome metric, drivers, guardrails, segmentation |
| `decision-log.md` | Chosen trade-offs and review triggers |
| `prioritization-matrix.md` | Comparable options and a reasoned recommendation |
| `*.sql` | Inspectable analysis logic with assumed schema |
| `workflow.md` | Operational path and human decision boundary |

## Scenario Language

Preferred:

- `This is a simulated B2B SaaS scenario.`
- `Scores are illustrative and demonstrate decision logic.`
- `The query assumes synthetic event tables.`

Avoid:

- statements implying work was deployed at a real company when it was not
- invented customer quotes, revenue results, or adoption improvements
- vague claims that AI determines strategy or removes product accountability

## Technical Depth

Code should clarify product reasoning. SQL, notebooks, or small demos are appropriate when they make metrics, classification rules, or prioritization transparent. Do not add technical complexity solely to decorate an artifact.

## AI Assistance Disclosure

When AI contributed materially, explain its role briefly: for example, structure drafting, SQL first pass, or consistency checks. Human review remains responsible for decisions, assumptions, safety, and final text.
