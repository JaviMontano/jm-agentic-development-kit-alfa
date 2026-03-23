---
name: map-flows
category: discovery
version: 2.0.0
description: "Maps user flows and journey maps from entry point through task completion with decision points and error paths"
triad:
  lead: "requirements-analyst"
  support: "domain-modeler"
  guardian: "quality-guardian"
skills: ["map-flows"]
output-formats: ["html", "md"]
---

# Mapflows

> Maps user flows and journey maps from entry point through task completion with decision points and error paths

## Orchestration

| Role | Agent | Responsibility |
|------|-------|---------------|
| Lead | `requirements-analyst` | Produces the primary deliverable |
| Support | `domain-modeler` | Reviews for business viability and stakeholder alignment |
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
- Load skill guidelines: `skills/map-flows/knowledge/body-of-knowledge.md`
- Check guardrails: `references/guardrails/*.json`
- Identify applicable quality gate (G0-G3)

### Phase 2: Execute
- **Lead** (`requirements-analyst`) produces deliverable for `{{objective}}`
- Follows skill procedure: Discover → Analyze → Execute → Validate
- Applies evidence tags: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
- Uses brand template if `{{output_format}}` = html

### Phase 3: Review
- **Support** (`domain-modeler`) reviews for:
  - business viability and stakeholder alignment
  - Edge cases and uncovered assumptions
  - Evidence tag completeness

### Phase 4: Validate
- **Guardian** checks:
  - [ ] All claims have evidence tags
  - [ ] Quality gate criteria met
  - [ ] Constitution XIII + XIV respected
  - [ ] Output exceeds expectations (insight + next steps included)

## Output Contract

**Delivers**: Maps user flows and journey maps from entry point through task completion with decision points and error paths
**Format**: `{{output_format}}` with MetodologIA brand if HTML
**Quality**: Evidence-tagged, gate-compliant, triada-validated
**Surpasses by**: Includes actionable recommendations and next steps beyond the ask
