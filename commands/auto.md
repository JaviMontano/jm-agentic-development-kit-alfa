---
description: "Autonomous pipeline from requirements to deployment"
user-invocable: true
---

# /jm-adk:auto

## Purpose

Run the entire pipeline autonomously from raw requirements to deployed application with no human intervention. Use this for well-defined projects where you trust the ADK to make all decisions.

## Workflow

1. Analyze requirements automatically, selecting appropriate depth based on complexity.
2. Design architecture and scaffold project using best-fit template.
3. Implement all features, running continuous quality checks.
4. Deploy to target environment and generate a completion report with all artifacts.

## Arguments

- `input` — Requirements description or document path (required)
- `stack` — Technology stack override (optional, auto-detected)
- `target` — Deploy target: `hostinger` | `firebase` | `preview` (optional, default: preview)

## Examples

```bash
/jm-adk:auto input="Build a recipe sharing platform with user accounts"
/jm-adk:auto input=./docs/requirements.md target=firebase
```

## Related Commands

- `/jm-adk:guided` — Same pipeline with human checkpoints
- `/jm-adk:express` — Quick pipeline skipping analysis
- `/jm-adk:status` — Check pipeline progress
