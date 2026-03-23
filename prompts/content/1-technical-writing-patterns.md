---
name: 1-technical-writing-patterns
category: content
version: 2.0.0
description: "API docs style, tutorial structure, reference format, how-to guides."
triad:
  lead: "technical-writing-patterns-specialist"
  support: "accessibility-writing-specialist"
  guardian: "quality-guardian"
skills: ["technical-writing-patterns"]
output-formats: ["html", "md"]
---

# Technical Writing Patterns

> API docs style, tutorial structure, reference format, how-to guides.

## Orchestration

| Role | Agent | Responsibility |
|------|-------|---------------|
| Lead | `technical-writing-patterns-specialist` | Produces the primary deliverable |
| Support | `accessibility-writing-specialist` | Reviews for clarity and audience fit |
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
- Load skill guidelines: `skills/technical-writing-patterns/knowledge/body-of-knowledge.md`
- Check guardrails: `references/guardrails/*.json`
- Identify applicable quality gate (G0-G3)

### Phase 2: Execute
- **Lead** (`technical-writing-patterns-specialist`) produces deliverable for `{{objective}}`
- Follows skill procedure: Discover → Analyze → Execute → Validate
- Applies evidence tags: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
- Uses brand template if `{{output_format}}` = html

### Phase 3: Review
- **Support** (`accessibility-writing-specialist`) reviews for:
  - clarity and audience fit
  - Edge cases and uncovered assumptions
  - Evidence tag completeness

### Phase 4: Validate
- **Guardian** checks:
  - [ ] All claims have evidence tags
  - [ ] Quality gate criteria met
  - [ ] Constitution XIII + XIV respected
  - [ ] Output exceeds expectations (insight + next steps included)

## Output Contract

**Delivers**: API docs style, tutorial structure, reference format, how-to guides.
**Format**: `{{output_format}}` with MetodologIA brand if HTML
**Quality**: Evidence-tagged, gate-compliant, triada-validated
**Surpasses by**: Includes actionable recommendations and next steps beyond the ask
