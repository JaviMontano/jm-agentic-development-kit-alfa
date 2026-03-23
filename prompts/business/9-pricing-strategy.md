---
name: 9-pricing-strategy
category: business
version: 2.0.0
description: "Pricing page design, anchoring, tier structure, value-based framing."
triad:
  lead: "marketing-context-specialist"
  support: "competitive-positioning-specialist"
  guardian: "quality-guardian"
skills: ["pricing-strategy"]
output-formats: ["html", "md"]
---

# Pricing Strategy

> Pricing page design, anchoring, tier structure, value-based framing.

## Orchestration

| Role | Agent | Responsibility |
|------|-------|---------------|
| Lead | `marketing-context-specialist` | Produces the primary deliverable |
| Support | `competitive-positioning-specialist` | Reviews for competitive positioning and ROI |
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
- Load skill guidelines: `skills/pricing-strategy/knowledge/body-of-knowledge.md`
- Check guardrails: `references/guardrails/*.json`
- Identify applicable quality gate (G0-G3)

### Phase 2: Execute
- **Lead** (`marketing-context-specialist`) produces deliverable for `{{objective}}`
- Follows skill procedure: Discover → Analyze → Execute → Validate
- Applies evidence tags: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
- Uses brand template if `{{output_format}}` = html

### Phase 3: Review
- **Support** (`competitive-positioning-specialist`) reviews for:
  - competitive positioning and ROI
  - Edge cases and uncovered assumptions
  - Evidence tag completeness

### Phase 4: Validate
- **Guardian** checks:
  - [ ] All claims have evidence tags
  - [ ] Quality gate criteria met
  - [ ] Constitution XIII + XIV respected
  - [ ] Output exceeds expectations (insight + next steps included)

## Output Contract

**Delivers**: Pricing page design, anchoring, tier structure, value-based framing.
**Format**: `{{output_format}}` with MetodologIA brand if HTML
**Quality**: Evidence-tagged, gate-compliant, triada-validated
**Surpasses by**: Includes actionable recommendations and next steps beyond the ask
