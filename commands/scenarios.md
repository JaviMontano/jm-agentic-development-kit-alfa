---
description: "Evaluate modernization/implementation scenarios"
user-invocable: true
---

# /jm-adk:scenarios

## Purpose

Generate and evaluate multiple implementation or modernization scenarios with trade-off analysis. Use this to compare approaches before committing to an architecture.

## Workflow

1. Analyze the problem space and generate 2-4 viable implementation scenarios.
2. Evaluate each scenario across dimensions: cost, time, risk, scalability, maintainability.
3. Create a comparison matrix with weighted scoring based on project priorities.
4. Recommend the optimal scenario with justification and migration path.

## Arguments

- `input` — Problem statement or requirements (required)
- `priorities` — Weighted priorities: comma-separated (optional, e.g., "cost:3,speed:5,quality:4")

## Examples

```bash
/jm-adk:scenarios input="Migrate monolith to microservices"
/jm-adk:scenarios input=./docs/requirements.md priorities="speed:5,cost:3"
```

## Related Commands

- `/jm-adk:feasibility` — Deep feasibility assessment
- `/jm-adk:architect` — Design chosen scenario architecture
- `/jm-adk:estimate` — Estimate effort per scenario
