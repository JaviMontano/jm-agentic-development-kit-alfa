---
name: audit-performance
category: quality
version: 2.0.0
description: "Performs a comprehensive performance audit with Lighthouse analysis, Core Web Vitals review, and optimization recommendations"
triad:
  lead: "quality-engineer"
  support: "code-reviewer"
  guardian: "quality-guardian"
skills: ["audit-performance"]
output-formats: ["html", "md"]
---

# Auditperformance

> Performs a comprehensive performance audit with Lighthouse analysis, Core Web Vitals review, and optimization recommendations

## Orchestration

| Role | Agent | Responsibility |
|------|-------|---------------|
| Lead | `quality-engineer` | Produces the primary deliverable |
| Support | `code-reviewer` | Reviews for completeness and edge cases |
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
- Load skill guidelines: `skills/audit-performance/knowledge/body-of-knowledge.md`
- Check guardrails: `references/guardrails/*.json`
- Identify applicable quality gate (G0-G3)

### Phase 2: Execute
- **Lead** (`quality-engineer`) produces deliverable for `{{objective}}`
- Follows skill procedure: Discover → Analyze → Execute → Validate
- Applies evidence tags: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
- Uses brand template if `{{output_format}}` = html

### Phase 3: Review
- **Support** (`code-reviewer`) reviews for:
  - completeness and edge cases
  - Edge cases and uncovered assumptions
  - Evidence tag completeness

### Phase 4: Validate
- **Guardian** checks:
  - [ ] All claims have evidence tags
  - [ ] Quality gate criteria met
  - [ ] Constitution XIII + XIV respected
  - [ ] Output exceeds expectations (insight + next steps included)

## Output Contract

**Delivers**: Performs a comprehensive performance audit with Lighthouse analysis, Core Web Vitals review, and optimization recommendations
**Format**: `{{output_format}}` with MetodologIA brand if HTML
**Quality**: Evidence-tagged, gate-compliant, triada-validated
**Surpasses by**: Includes actionable recommendations and next steps beyond the ask
