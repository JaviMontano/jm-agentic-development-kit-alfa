---
name: 12-backup-strategy
category: devops
version: 2.0.0
description: "Firestore exports, scheduled backups, recovery testing, retention."
triad:
  lead: "ci-pipeline-design-specialist"
  support: "monitoring-setup-specialist"
  guardian: "quality-guardian"
skills: ["backup-strategy"]
output-formats: ["html", "md"]
---

# Backup Strategy

> Firestore exports, scheduled backups, recovery testing, retention.

## Orchestration

| Role | Agent | Responsibility |
|------|-------|---------------|
| Lead | `ci-pipeline-design-specialist` | Produces the primary deliverable |
| Support | `monitoring-setup-specialist` | Reviews for reliability and incident prevention |
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
- Load skill guidelines: `skills/backup-strategy/knowledge/body-of-knowledge.md`
- Check guardrails: `references/guardrails/*.json`
- Identify applicable quality gate (G0-G3)

### Phase 2: Execute
- **Lead** (`ci-pipeline-design-specialist`) produces deliverable for `{{objective}}`
- Follows skill procedure: Discover → Analyze → Execute → Validate
- Applies evidence tags: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
- Uses brand template if `{{output_format}}` = html

### Phase 3: Review
- **Support** (`monitoring-setup-specialist`) reviews for:
  - reliability and incident prevention
  - Edge cases and uncovered assumptions
  - Evidence tag completeness

### Phase 4: Validate
- **Guardian** checks:
  - [ ] All claims have evidence tags
  - [ ] Quality gate criteria met
  - [ ] Constitution XIII + XIV respected
  - [ ] Output exceeds expectations (insight + next steps included)

## Output Contract

**Delivers**: Firestore exports, scheduled backups, recovery testing, retention.
**Format**: `{{output_format}}` with MetodologIA brand if HTML
**Quality**: Evidence-tagged, gate-compliant, triada-validated
**Surpasses by**: Includes actionable recommendations and next steps beyond the ask
