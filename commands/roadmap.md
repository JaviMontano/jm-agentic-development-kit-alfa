---
description: "Generate prioritized product roadmap"
user-invocable: true
---

# /jm-adk:roadmap

## Purpose

Generate a prioritized product roadmap with phases, milestones, and dependencies. Use this to plan delivery timelines and communicate the product vision to stakeholders.

## Workflow

1. Analyze requirements and group them into logical feature clusters.
2. Prioritize using RICE scoring (Reach, Impact, Confidence, Effort).
3. Organize into time-boxed phases (MVP, v1.0, v1.1, etc.) with dependencies.
4. Generate a visual roadmap timeline with milestones and deliverables.

## Arguments

- `input` — Requirements document or feature list (required)
- `phases` — Number of phases to plan (optional, default: 3)
- `timeline` — Timeline unit: `weeks` | `months` | `quarters` (optional, default: months)

## Examples

```bash
/jm-adk:roadmap input="SaaS platform with billing, teams, and analytics"
/jm-adk:roadmap input=./docs/requirements.md phases=4 timeline=quarters
```

## Related Commands

- `/jm-adk:estimate` — Detailed effort estimation
- `/jm-adk:requirements` — Extract requirements first
- `/jm-adk:brief` — Executive summary of roadmap
