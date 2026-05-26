# Publishing Policy: AI-Assisted, Human-Reviewed Work

## Purpose

This repository uses AI tools to accelerate structured product work while preserving human accountability for what is presented publicly. Publishing is intentionally quality-led rather than cadence-led.

## Core Rules

1. AI may assist with outlines, research organization, draft SQL, draft artifact structure, and consistency checks.
2. A human author must validate scenario framing, assumptions, metric definitions, SQL logic, sources, trade-offs, and narrative tone before publication.
3. Automated workflows must not publish directly to `main`.
4. Draft output should be generated on a branch or in a draft pull request and reviewed before merge.
5. Simulated or anonymized scenarios must be labeled plainly and consistently.
6. Raw private customer material, credentials, proprietary data, or identifying personal information must not be published.

## Suggested Workflow

```text
Topic backlog
  -> human selects product question and artifact type
  -> AI-assisted draft on working branch
  -> human edits assumptions, decisions, and analytical logic
  -> quality checklist review
  -> draft pull request
  -> human approval and merge decision
```

## Minimum Publication Standard

A featured case study is publishable only when it includes:

- a specific product question and scenario classification
- a decision-oriented artifact, such as a PRD, KPI tree, SQL query, or prioritization record
- explicit assumptions, non-goals, risks, and trade-offs
- an AI transparency statement where AI assistance materially shaped the artifact
- a human review outcome recorded through the pull request process

## Relay And Automation Recommendation

If Relay is used to generate future material, its output should be limited to draft branches or pull requests. It should check for topic duplication, require an artifact type, label content as draft, and stop before merge or publication. Automation settings are governed outside this repository and should only be changed intentionally after review.

## Cadence

One strong, reviewed case artifact per week is preferable to two generic posts. Publication may pause when evidence quality, editing time, or artifact depth is insufficient.
