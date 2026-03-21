---
description: "Run full discovery pipeline"
user-invocable: true
---

# /jm-adk:discover

## Purpose

Execute the complete discovery pipeline covering stakeholders, domain mapping, flows, scenarios, and feasibility. Use this to understand a problem space comprehensively before designing solutions.

## Workflow

1. Gather context from user input, documents, and conversation history.
2. Run stakeholder analysis, domain mapping, and business flow identification in parallel.
3. Evaluate scenarios and perform 7-dimension feasibility assessment.
4. Consolidate all discovery artifacts into a structured discovery report.

## Arguments

- `input` — Problem statement or document path (required)
- `scope` — Discovery scope: `full` | `technical` | `business` (optional, default: full)

## Examples

```bash
/jm-adk:discover input="Modernize legacy inventory system"
/jm-adk:discover input=./docs/brief.md scope=technical
```

## Related Commands

- `/jm-adk:analyze` — Full analysis pipeline including spec generation
- `/jm-adk:requirements` — Extract requirements only
- `/jm-adk:feasibility` — Feasibility assessment only
