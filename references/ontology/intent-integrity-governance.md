# JM-ADK Intent Integrity Governance

> Forked from intent-integrity-chain/kit — Branded for MetodologIA
> Made with Claude Code and Tons of Love with the Help of Pristino Agent

## Document Management System

### 1. Plan Files — `plan-YYYY-MM-DD-task-name.md`

Every new request MUST generate a plan file before implementation:

```
.specify/plans/
├── plan-2026-03-21-auth-system.md
├── plan-2026-03-21-landing-page.md
├── plan-2026-03-22-payment-integration.md
└── ...
```

**Plan Template:**
```markdown
# Plan: {Task Name}

**Date**: {YYYY-MM-DD}
**Requester**: {user}
**Confidence**: {0.0-1.0}
**Status**: draft | reviewed | approved | implemented

## Problem Statement
{What problem does this solve?}

## Proposed Solution
{High-level approach}

## Technical Feasibility
- [ ] Firebase supports this use case
- [ ] Hostinger deployment compatible
- [ ] No SSR or Docker required
- [ ] Third-party services verified
- **Feasibility Score**: {0.0-1.0}

## Business Viability
- [ ] Cost/benefit analyzed
- [ ] Time-to-market acceptable
- [ ] Maintenance burden assessed
- **Viability Score**: {0.0-1.0}

## Sub-Tasks
1. {Task 1} — {estimate}
2. {Task 2} — {estimate}

## Risks
| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|

## Decision
{Approved/Rejected with reasoning}
```

### 2. Architecture Decision Records (ADR)

Every architecture decision MUST be documented:

```
.specify/adr/
├── ADR-001-firebase-over-supabase.md
├── ADR-002-vanilla-js-baseline.md
├── ADR-003-hostinger-deployment-strategy.md
└── ...
```

**ADR Template:**
```markdown
# ADR-{NNN}: {Decision Title}

**Date**: {YYYY-MM-DD}
**Status**: proposed | accepted | deprecated | superseded
**Supersedes**: {ADR-NNN if applicable}

## Context
{What is the issue that we're seeing that is motivating this decision?}

## Decision
{What is the change that we're proposing and/or doing?}

## Consequences

### Positive
- {benefit 1}
- {benefit 2}

### Negative
- {trade-off 1}
- {trade-off 2}

### Neutral
- {observation}

## Alternatives Considered
| Option | Pros | Cons | Rejected Because |
|--------|------|------|-----------------|

## Evidence
- `[CODE]` {code-based evidence}
- `[DOC]` {documentation reference}
- `[WEB]` {web search result}
```

### 3. Decision Logs (DL)

For non-architecture decisions (process, tooling, workflow):

```
.specify/decisions/
├── DL-001-use-vite-over-webpack.md
├── DL-002-tailwind-for-css.md
└── ...
```

**DL Template:**
```markdown
# DL-{NNN}: {Decision Title}

**Date**: {YYYY-MM-DD}
**Category**: tooling | process | workflow | dependency | configuration
**Decided By**: {agent or user}

## Decision
{What was decided}

## Rationale
{Why this decision was made}

## Impact
{What changes as a result}
```

### 4. Requirement Logs (RQL)

Every requirement MUST be tracked:

```
.specify/requirements/
├── RQL-001-user-authentication.md
├── RQL-002-product-catalog.md
└── ...
```

**RQL Template:**
```markdown
# RQL-{NNN}: {Requirement Title}

**Date**: {YYYY-MM-DD}
**Priority**: critical | high | medium | low
**Status**: captured | analyzed | specified | implemented | verified
**Source**: user | discovery | technical-debt | bug

## Requirement
{Clear statement of what is needed — WHAT, not HOW}

## Acceptance Criteria
```gherkin
Given {precondition}
When {action}
Then {expected result}
```

## Traceability
- **Plan**: plan-{date}-{task}.md
- **ADR**: ADR-{NNN} (if applicable)
- **Feature**: specs/{NNN}/feature.feature
- **Tests**: tests/{test-file}
- **Code**: src/{implementation-file}

## History
| Date | Change | By |
|------|--------|----|
```

### 5. Constitution — Project Governance

```
.specify/CONSTITUTION.md
```

Defines project-wide rules that ALL decisions must respect:
- Technology constraints (Firebase, HTML/CSS/JS, Hostinger)
- Quality standards (Lighthouse scores, WCAG, evidence tags)
- Process rules (plan before code, test before ship)
- Brand guidelines (MetodologIA + Pristino Agent attribution)

## Integrity Chain

```
Intent → RQL → Plan → ADR → Spec → .feature → Tests → Code
     ↑                                                    ↓
     └──────── Hash verification ← Pre-commit hook ←──────┘
```

Every link in the chain is:
1. **Documented** — in the appropriate log file
2. **Traceable** — cross-referenced via IDs (RQL-NNN, ADR-NNN, DL-NNN)
3. **Verified** — through quality gates and fact-checking
4. **Immutable** — once approved, changes require a new decision record

## Directory Structure

```
.specify/
├── CONSTITUTION.md          # Project governance
├── context.json             # Feature state and hashes
├── plans/                   # plan-DATE-TASK.md files
├── adr/                     # Architecture Decision Records
├── decisions/               # Decision Logs
├── requirements/            # Requirement Logs (RQL)
├── specs/                   # Feature specifications
│   └── NNN-feature/
│       ├── spec.md
│       ├── plan.md
│       ├── tasks.md
│       └── *.feature
└── score-history.json       # Quality score tracking
```

## Branding

All generated documents MUST include:

```
---
🏷️ MetodologIA · JM Agentic Development Kit
Made with Claude Code and Tons of Love with the Help of Pristino Agent
---
```
