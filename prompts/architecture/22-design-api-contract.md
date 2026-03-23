---
name: design-api-contract
category: architecture
version: 2.0.0
description: "Designs API contracts for Cloud Functions endpoints including request/response schemas, error codes, and versioning"
triad:
  lead: "architecture-designer"
  support: "security-architect"
  guardian: "quality-guardian"
skills: ["design-api-contract"]
output-formats: ["html", "md"]
---

# Designapi Contract

> Designs API contracts for Cloud Functions endpoints including request/response schemas, error codes, and versioning

## Orchestration

| Role | Agent | Responsibility |
|------|-------|---------------|
| Lead | `architecture-designer` | Produces the primary deliverable |
| Support | `security-architect` | Reviews for security and scalability |
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
- Load skill guidelines: `skills/design-api-contract/knowledge/body-of-knowledge.md`
- Check guardrails: `references/guardrails/*.json`
- Identify applicable quality gate (G0-G3)

### Phase 2: Execute
- **Lead** (`architecture-designer`) produces deliverable for `{{objective}}`
- Follows skill procedure: Discover → Analyze → Execute → Validate
- Applies evidence tags: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
- Uses brand template if `{{output_format}}` = html

### Phase 3: Review
- **Support** (`security-architect`) reviews for:
  - security and scalability
  - Edge cases and uncovered assumptions
  - Evidence tag completeness

### Phase 4: Validate
- **Guardian** checks:
  - [ ] All claims have evidence tags
  - [ ] Quality gate criteria met
  - [ ] Constitution XIII + XIV respected
  - [ ] Output exceeds expectations (insight + next steps included)

## Output Contract

**Delivers**: Designs API contracts for Cloud Functions endpoints including request/response schemas, error codes, and versioning
**Format**: `{{output_format}}` with MetodologIA brand if HTML
**Quality**: Evidence-tagged, gate-compliant, triada-validated
**Surpasses by**: Includes actionable recommendations and next steps beyond the ask
