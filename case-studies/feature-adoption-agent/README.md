---
title: Feature Adoption Agent
type: case-study
status: human-review-required
scenario: simulated
domain: b2b-saas-product-analytics
---

# Feature Adoption Agent

## Scenario

**Scenario type:** Simulated B2B SaaS operational case. No real customer or employer performance is represented.

A workflow management platform has released an approval automation feature for operations teams. Product events show trial usage, but aggregate clicks cannot answer whether customer accounts reached repeatable value. Customer success needs a defensible way to identify accounts that attempted adoption, stalled during setup, or adopted successfully without turning an analytical aid into an autonomous intervention engine.

## Product Question

How should the product team surface meaningful feature adoption gaps each week so that PM and customer-facing teams can choose targeted follow-up actions?

## Approach

The proposed Feature Adoption Agent is an assistive monitoring workflow. It combines product telemetry and account attributes to generate an exception list for review. It does not contact customers, change product configuration, or make roadmap decisions automatically.

## What This Case Demonstrates

- A measurable definition of account-level adoption rather than a vanity usage count
- KPI design connecting activation, repeat use, friction, and review workload
- SQL logic for segment-level adoption and stalled-account review
- Product decisions about boundaries, instrumentation, and human ownership

## Artifact Map

| Artifact | Purpose |
| --- | --- |
| [PRD](prd.md) | Scope, users, requirements, and safeguards |
| [KPI tree](kpi-tree.md) | Measurement model and metric definitions |
| [Decision log](decision-log.md) | Explicit choices and trade-offs |
| [Prioritization matrix](prioritization-matrix.md) | Initial investment sequence |
| [SQL analysis](adoption-analysis.sql) | Reviewable analytical logic on simulated event tables |
| [Workflow](workflow.md) | Assistive operating loop and escalation boundary |

## Intended Outcome

A PM can review adoption exceptions weekly, validate patterns with customer context, and prioritize instrumentation, onboarding, or discovery actions. The artifact deliberately favors explainability and operational usefulness over autonomous behavior.
