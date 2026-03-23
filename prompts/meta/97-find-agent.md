---
name: find-agent
category: meta
version: 2.0.0
description: "Finds the best agent(s) from the JM-ADK roster to handle a specific task, considering expertise and workload"
triad:
  lead: "adk-orchestrator"
  support: "integrity-validator"
  guardian: "quality-guardian"
skills: ["find-agent"]
output-formats: ["html", "md"]
---

# Findagent

> Finds the best agent(s) from the JM-ADK roster to handle a specific task, considering expertise and workload

## Orchestration

| Role | Agent | Responsibility |
|------|-------|---------------|
| Lead | `adk-orchestrator` | Produces the primary deliverable |
| Support | `integrity-validator` | Reviews for consistency and constitutional compliance |
| Guardian | `quality-guardian` | Validates evidence, gates, Constitution |

## Dynamic Parameters

| Parameter | Description | Required | Default | Filled By |
|-----------|-------------|----------|---------|-----------|
| `{{objective}}` | What to achieve | Yes | — | User input |
| `{{context}}` | Background and constraints | Yes | — | User or environment |
| `{{audience}}` | Who consumes the output | No | "technical team" | User |
| `{{depth}}` | Detail level: quick / standard / deep | No | "standard" | Auto |
| `{{output_format}}` | Format: html / docx / xlsx / md | No | "html" | Auto |

## Execution Protocol

### Phase 1: Think First (Constitution XIII)
- Read existing context: `{{context}}`
- Load skill guidelines: `skills/find-agent/knowledge/body-of-knowledge.md`
- Check guardrails: `references/guardrails/*.json`
- Identify applicable quality gate (G0-G3)

### Phase 2: Execute
- **Lead** (`adk-orchestrator`) produces deliverable for `{{objective}}`
- Follows skill procedure: Discover → Analyze → Execute → Validate
- Applies evidence tags: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
- Uses brand template if `{{output_format}}` = html

### Phase 3: Review
- **Support** (`integrity-validator`) reviews for:
  - consistency and constitutional compliance
  - Edge cases and uncovered assumptions
  - Evidence tag completeness

### Phase 4: Validate
- **Guardian** checks:
  - [ ] All claims have evidence tags
  - [ ] Quality gate criteria met
  - [ ] Constitution XIII + XIV respected
  - [ ] Output exceeds expectations (insight + next steps included)

## Output Contract

**Delivers**: Finds the best agent(s) from the JM-ADK roster to handle a specific task, considering expertise and workload
**Format**: `{{output_format}}` with MetodologIA brand if HTML
**Quality**: Evidence-tagged, gate-compliant, triada-validated
**Surpasses by**: Includes actionable recommendations and next steps beyond the ask
