---
description: "Run 7-dimension feasibility assessment"
user-invocable: true
---

# /jm-adk:feasibility

## Purpose

Assess project feasibility across seven dimensions: technical, economic, operational, schedule, legal, organizational, and market. Use this to validate whether a project should proceed.

## Workflow

1. Gather project constraints, assumptions, and context from input.
2. Evaluate each of the 7 feasibility dimensions with evidence-based scoring (1-5).
3. Identify showstoppers, critical risks, and mitigation strategies per dimension.
4. Generate a feasibility report with go/no-go recommendation and confidence level.

## Arguments

- `input` — Project description or requirements (required)
- `dimensions` — Specific dimensions to assess (optional, default: all seven)

## Examples

```bash
/jm-adk:feasibility input="AI-powered customer service chatbot for 10K daily users"
/jm-adk:feasibility input=./docs/spec.md dimensions="technical,economic,schedule"
```

## Related Commands

- `/jm-adk:risks` — Detailed risk register
- `/jm-adk:estimate` — Effort estimation
- `/jm-adk:scenarios` — Compare implementation scenarios
