---
description: "Generate risk register"
user-invocable: true
---

# /jm-adk:risks

## Purpose

Generate a comprehensive risk register identifying potential threats, their likelihood, impact, and mitigation strategies. Use this to proactively manage project risks.

## Workflow

1. Analyze project context for technical, business, organizational, and external risks.
2. Score each risk by probability (1-5) and impact (1-5) to calculate risk priority.
3. Define mitigation strategies, contingency plans, and risk owners for top risks.
4. Generate a risk register document with a risk heat map visualization.

## Arguments

- `input` — Project description or specification (required)
- `categories` — Risk categories to focus on (optional, default: all)

## Examples

```bash
/jm-adk:risks input="Cloud migration of legacy banking system"
/jm-adk:risks input=./docs/spec.md categories="technical,security"
```

## Related Commands

- `/jm-adk:feasibility` — Feasibility assessment
- `/jm-adk:estimate` — Effort estimation with risk buffer
- `/jm-adk:audit-security` — Security-specific risk audit
