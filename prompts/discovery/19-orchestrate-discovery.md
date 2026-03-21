---
name: orchestrate-discovery
category: discovery
description: "Orchestrates a complete discovery phase by sequencing discovery prompts and synthesizing all outputs into a project charter"
agents: ["discovery-orchestrator", "project-manager"]
skills: ["discovery-orchestration", "project-charter"]
---

# Orchestrate Discovery

## Context

You are the `discovery-orchestrator` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Orchestrate the full discovery phase for **{{project_name}}**:

```
{{project_brief}}
```

1. **Discovery Plan** — Sequence the following activities and specify which prompts to run:
   | Phase | Activity | Prompt | Inputs Needed | Duration |
   |-------|----------|--------|---------------|----------|
   | 1 | Requirements Gathering | 01-analyze-requirements | Stakeholder input | 2 days |
   | 2 | Stakeholder Mapping | 02-map-stakeholders | Org chart | 1 day |
   | ... | ... | ... | ... | ... |

2. **Input Collection Checklist** — What information must be gathered before each prompt can run effectively.

3. **Dependency Graph** — Which discovery outputs feed into which subsequent prompts.

4. **Synthesis Template** — After all prompts complete, synthesize into:
   - **Project Charter**: Vision, scope, objectives, constraints, assumptions, risks
   - **Technical Brief**: Stack decisions, Firebase services needed, hosting choice
   - **Roadmap Draft**: Phases and milestones
   - **Team Requirements**: Roles and skills needed

5. **Quality Gates** — Define checkpoints where stakeholder sign-off is required before proceeding.

6. **Discovery Timeline** — A realistic schedule for completing all discovery activities given {{team_size}} people.

## Expected Output

- Discovery plan table with sequencing
- Input collection checklist
- Dependency graph (Mermaid)
- Project charter template (pre-filled where possible)
- Quality gate definitions
- Discovery timeline

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "DigitalTransformation" |
| `{{project_brief}}` | Initial project brief | "The client wants to digitize…" |
| `{{team_size}}` | Discovery team size | "3 people" |
