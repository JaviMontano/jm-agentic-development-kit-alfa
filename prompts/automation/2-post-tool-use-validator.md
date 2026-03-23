---
name: 2-post-tool-use-validator
category: automation
version: 2.0.0
description: "Validate tool outputs: lint check, evidence tags, quality gates."
triad:
  lead: "workflow-orchestration-specialist"
  support: "error-recovery-automation-specialist"
  guardian: "quality-guardian"
skills: ["post-tool-use-validator"]
output-formats: ["html", "md"]
---

# Post Tool Use Validator

> Validate tool outputs: lint check, evidence tags, quality gates.

## Orchestration

| Role | Agent | Responsibility |
|------|-------|---------------|
| Lead | `workflow-orchestration-specialist` | Produces the primary deliverable |
| Support | `error-recovery-automation-specialist` | Reviews for error recovery and idempotency |
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
- Load skill guidelines: `skills/post-tool-use-validator/knowledge/body-of-knowledge.md`
- Check guardrails: `references/guardrails/*.json`
- Identify applicable quality gate (G0-G3)

### Phase 2: Execute
- **Lead** (`workflow-orchestration-specialist`) produces deliverable for `{{objective}}`
- Follows skill procedure: Discover → Analyze → Execute → Validate
- Applies evidence tags: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
- Uses brand template if `{{output_format}}` = html

### Phase 3: Review
- **Support** (`error-recovery-automation-specialist`) reviews for:
  - error recovery and idempotency
  - Edge cases and uncovered assumptions
  - Evidence tag completeness

### Phase 4: Validate
- **Guardian** checks:
  - [ ] All claims have evidence tags
  - [ ] Quality gate criteria met
  - [ ] Constitution XIII + XIV respected
  - [ ] Output exceeds expectations (insight + next steps included)

## Output Contract

**Delivers**: Validate tool outputs: lint check, evidence tags, quality gates.
**Format**: `{{output_format}}` with MetodologIA brand if HTML
**Quality**: Evidence-tagged, gate-compliant, triada-validated
**Surpasses by**: Includes actionable recommendations and next steps beyond the ask
