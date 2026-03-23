---
name: create-payment
category: development
version: 2.0.0
description: "Creates a payment integration with Stripe or PayPal including checkout flow, webhooks, and Firestore order tracking"
triad:
  lead: "frontend-craftsman"
  support: "accessibility-designer"
  guardian: "quality-guardian"
skills: ["create-payment"]
output-formats: ["html", "md"]
---

# Createpayment

> Creates a payment integration with Stripe or PayPal including checkout flow, webhooks, and Firestore order tracking

## Orchestration

| Role | Agent | Responsibility |
|------|-------|---------------|
| Lead | `frontend-craftsman` | Produces the primary deliverable |
| Support | `accessibility-designer` | Reviews for accessibility and performance |
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
- Load skill guidelines: `skills/create-payment/knowledge/body-of-knowledge.md`
- Check guardrails: `references/guardrails/*.json`
- Identify applicable quality gate (G0-G3)

### Phase 2: Execute
- **Lead** (`frontend-craftsman`) produces deliverable for `{{objective}}`
- Follows skill procedure: Discover → Analyze → Execute → Validate
- Applies evidence tags: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
- Uses brand template if `{{output_format}}` = html

### Phase 3: Review
- **Support** (`accessibility-designer`) reviews for:
  - accessibility and performance
  - Edge cases and uncovered assumptions
  - Evidence tag completeness

### Phase 4: Validate
- **Guardian** checks:
  - [ ] All claims have evidence tags
  - [ ] Quality gate criteria met
  - [ ] Constitution XIII + XIV respected
  - [ ] Output exceeds expectations (insight + next steps included)

## Output Contract

**Delivers**: Creates a payment integration with Stripe or PayPal including checkout flow, webhooks, and Firestore order tracking
**Format**: `{{output_format}}` with MetodologIA brand if HTML
**Quality**: Evidence-tagged, gate-compliant, triada-validated
**Surpasses by**: Includes actionable recommendations and next steps beyond the ask
