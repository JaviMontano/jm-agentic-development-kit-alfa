---
description: "Create executive pitch with ROI"
user-invocable: true
---

# /jm-adk:pitch

## Purpose

Create an executive pitch document with value proposition, ROI projections, and strategic alignment. Use this to present a project proposal to decision-makers.

## Workflow

1. Synthesize project value proposition from requirements and feasibility data.
2. Calculate ROI projections with cost-benefit analysis over 1-3 year horizon.
3. Map strategic alignment to business objectives and competitive advantages.
4. Generate a pitch document with executive summary, key metrics, and call to action.

## Arguments

- `input` — Project description or specification (required)
- `audience` — Target audience: `c-suite` | `technical` | `board` (optional, default: c-suite)

## Examples

```bash
/jm-adk:pitch input="Digital transformation of customer onboarding"
/jm-adk:pitch input=./docs/spec.md audience=board
```

## Related Commands

- `/jm-adk:brief` — Technical brief (shorter format)
- `/jm-adk:estimate` — Effort estimation for cost basis
- `/jm-adk:competition` — Competitive positioning
