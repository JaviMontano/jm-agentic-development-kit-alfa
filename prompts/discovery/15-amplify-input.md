---
name: amplify-input
category: discovery
version: 2.0.0
description: "Takes a brief user input and expands it into a rich, multi-dimensional specification through 3-pass amplification"
triad:
  lead: "requirements-analyst"
  support: "domain-modeler"
  guardian: "quality-guardian"
skills: ["amplify-input"]
output-formats: ["html", "md"]
---

# Amplifyinput

> Takes a brief user input and expands it into a rich, multi-dimensional specification through 3-pass amplification

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
- Load skill guidelines: `skills/amplify-input/knowledge/body-of-knowledge.md`
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

**Delivers**: Takes a brief user input and expands it into a rich, multi-dimensional specification through 3-pass amplification
**Format**: `{{output_format}}` with MetodologIA brand if HTML
**Quality**: Evidence-tagged, gate-compliant, triada-validated
**Surpasses by**: Includes actionable recommendations and next steps beyond the ask
