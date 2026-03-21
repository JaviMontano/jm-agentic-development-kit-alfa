---
description: "Full pipeline with human checkpoints at every gate"
user-invocable: true
---

# /jm-adk:guided

## Purpose

Execute the complete pipeline (analysis + development + deployment) with explicit human approval gates between each phase. Use this when stakeholder sign-off is needed at every step.

## Workflow

1. Run analysis pipeline and present results for approval before proceeding.
2. Present architecture design for review; incorporate feedback before scaffolding.
3. Build features incrementally, pausing for review after each major component.
4. Run full audit suite, present results, and deploy only after final human approval.

## Arguments

- `input` — Requirements description or document path (required)
- `gates` — Custom gate points: comma-separated phase names (optional, default: all)

## Examples

```bash
/jm-adk:guided input="Customer portal with self-service features"
/jm-adk:guided input=./docs/brief.md gates=analysis,architecture,deploy
```

## Related Commands

- `/jm-adk:auto` — Autonomous pipeline without checkpoints
- `/jm-adk:analyze` — Run analysis phase only
- `/jm-adk:develop` — Run development phase only
