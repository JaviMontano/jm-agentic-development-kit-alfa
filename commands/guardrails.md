---
description: "List, add, or remove working guidelines, constraints, and guardrails"
user-invocable: true
---

# /jm-adk:guardrails

## Purpose

Manage user-declared working rules. List active rules, add new ones (with confirmation), or deactivate existing ones.

## Usage

```bash
/jm-adk:guardrails                    # List all active rules
/jm-adk:guardrails add="your rule"    # Add a new rule (Pristino confirms type)
/jm-adk:guardrails remove=GL-001     # Deactivate a rule by ID
```

## Arguments

| Argument | Description | Required | Default |
|----------|-------------|----------|---------|
| `add` | Rule text to add | No | — |
| `remove` | Rule ID to deactivate | No | — |
| (none) | List all active rules | — | default action |

## Related Commands

- `/jm-adk:init` — Initial project setup may generate default guardrails
- `/jm-adk:review` — Guardian checks guardrail compliance during review
