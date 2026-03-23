---
name: 6-pre-compact-context
category: automation
version: 2.0.0
description: "Context preservation before compression, priority-based retention."
triad:
  lead: "workflow-orchestration-specialist"
  support: "error-recovery-automation-specialist"
  guardian: "quality-guardian"
skills: ["pre-compact-context"]
output-formats: ["html", "md"]
---

# Pre Compact Context

> Context preservation before compression, priority-based retention.

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
- Load skill guidelines: `skills/pre-compact-context/knowledge/body-of-knowledge.md`
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

**Delivers**: Context preservation before compression, priority-based retention.
**Format**: `{{output_format}}` with MetodologIA brand if HTML
**Quality**: Evidence-tagged, gate-compliant, triada-validated
**Surpasses by**: Includes actionable recommendations and next steps beyond the ask
