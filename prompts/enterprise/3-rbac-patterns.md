---
name: 3-rbac-patterns
category: enterprise
version: 2.0.0
description: "Role-based access control, permission matrices, Firebase custom claims."
triad:
  lead: "compliance-framework-specialist"
  support: "audit-trail-design-specialist"
  guardian: "quality-guardian"
skills: ["rbac-patterns"]
output-formats: ["html", "md"]
---

# Rbac Patterns

> Role-based access control, permission matrices, Firebase custom claims.

## Orchestration

| Role | Agent | Responsibility |
|------|-------|---------------|
| Lead | `compliance-framework-specialist` | Produces the primary deliverable |
| Support | `audit-trail-design-specialist` | Reviews for compliance and audit readiness |
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
- Load skill guidelines: `skills/rbac-patterns/knowledge/body-of-knowledge.md`
- Check guardrails: `references/guardrails/*.json`
- Identify applicable quality gate (G0-G3)

### Phase 2: Execute
- **Lead** (`compliance-framework-specialist`) produces deliverable for `{{objective}}`
- Follows skill procedure: Discover → Analyze → Execute → Validate
- Applies evidence tags: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
- Uses brand template if `{{output_format}}` = html

### Phase 3: Review
- **Support** (`audit-trail-design-specialist`) reviews for:
  - compliance and audit readiness
  - Edge cases and uncovered assumptions
  - Evidence tag completeness

### Phase 4: Validate
- **Guardian** checks:
  - [ ] All claims have evidence tags
  - [ ] Quality gate criteria met
  - [ ] Constitution XIII + XIV respected
  - [ ] Output exceeds expectations (insight + next steps included)

## Output Contract

**Delivers**: Role-based access control, permission matrices, Firebase custom claims.
**Format**: `{{output_format}}` with MetodologIA brand if HTML
**Quality**: Evidence-tagged, gate-compliant, triada-validated
**Surpasses by**: Includes actionable recommendations and next steps beyond the ask
