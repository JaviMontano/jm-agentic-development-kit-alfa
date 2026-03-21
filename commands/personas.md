---
description: "Generate user personas and journey maps"
user-invocable: true
---

# /jm-adk:personas

## Purpose

Generate detailed user personas and customer journey maps based on project requirements. Use this to humanize your target users and identify UX pain points and opportunities.

## Workflow

1. Analyze target audience from project context and requirements.
2. Generate 3-5 distinct personas with demographics, goals, frustrations, and tech savviness.
3. Create a journey map for each persona covering awareness, onboarding, core usage, and retention.
4. Identify pain points, moments of delight, and UX improvement opportunities.

## Arguments

- `input` — Product description or requirements (required)
- `count` — Number of personas to generate (optional, default: 3)

## Examples

```bash
/jm-adk:personas input="Online learning platform for professionals"
/jm-adk:personas input=./docs/requirements.md count=5
```

## Related Commands

- `/jm-adk:stakeholders` — Stakeholder identification
- `/jm-adk:competition` — Competitive landscape
- `/jm-adk:create-landing` — Landing page targeting personas
