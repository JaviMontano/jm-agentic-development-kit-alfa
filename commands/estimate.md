---
description: "Estimate effort in FTE-months"
user-invocable: true
---

# /jm-adk:estimate

## Purpose

Estimate project effort in FTE-months with confidence intervals and breakdown by module. Use this to plan resource allocation and set timeline expectations.

## Workflow

1. Decompose requirements into estimable work packages.
2. Apply three-point estimation (optimistic, most likely, pessimistic) per work package.
3. Calculate FTE-months with confidence intervals and identify the critical path.
4. Generate an estimation report with assumptions, exclusions, and risk buffer recommendation.

## Arguments

- `input` — Requirements or specification document (required)
- `team-size` — Available team size for timeline calculation (optional)

## Examples

```bash
/jm-adk:estimate input="E-commerce platform with payments and inventory"
/jm-adk:estimate input=./docs/spec.md team-size=3
```

## Related Commands

- `/jm-adk:roadmap` — Product roadmap with timeline
- `/jm-adk:feasibility` — Feasibility assessment including schedule
- `/jm-adk:risks` — Risk register affecting estimates
