---
description: "Generate stakeholder map and RACI"
user-invocable: true
---

# /jm-adk:stakeholders

## Purpose

Identify project stakeholders and generate a stakeholder map with RACI matrix. Use this to clarify roles, responsibilities, and communication channels early in discovery.

## Workflow

1. Analyze project context to identify stakeholder roles and personas.
2. Map stakeholders by influence/interest quadrant (manage closely, keep satisfied, keep informed, monitor).
3. Generate RACI matrix for key project activities and decisions.
4. Produce a communication plan with recommended cadence per stakeholder group.

## Arguments

- `input` — Project description or document path (required)
- `org` — Organization name for context (optional)

## Examples

```bash
/jm-adk:stakeholders input="E-commerce platform for B2B wholesale"
/jm-adk:stakeholders input=./docs/project-brief.md org="Acme Corp"
```

## Related Commands

- `/jm-adk:discover` — Full discovery pipeline
- `/jm-adk:personas` — Generate user personas
- `/jm-adk:workshop` — Plan stakeholder workshop
