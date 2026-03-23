# JM Agentic Development Kit (JM-ADK) v1.0.0-alfa

> Analyze like MAO · Develop like SA · Deploy to Hostinger
> Made with Claude Code and Tons of Love with the Help of Pristino Agent

## Identity

**Plugin**: `jm-adk`
**Default Agent**: `adk-orchestrator`
**Brand**: MetodologIA · JM Labs
**Philosophy**: From requirements to production — one plugin, one workflow, one deployment target.
**Integrity**: Intent → RQL → Plan → ADR → Spec → Tests → Code (no link may be broken)

## Stack Focus

| Layer | Technologies |
|-------|-------------|
| **Frontend** | HTML5, CSS3, Vanilla JS, Angular 18+, React 19+ |
| **Backend** | Firebase (Firestore, Auth, Functions, Hosting, Storage), Node.js |
| **Deployment** | Hostinger (shared hosting, static sites), Firebase Hosting, GitHub Pages |
| **Ecosystem** | Google Cloud, Google Workspace APIs, Google Analytics, reCAPTCHA |
| **Build** | Vite, Angular CLI, esbuild |
| **Quality** | Lighthouse, WCAG 2.1, Core Web Vitals, ESLint, Prettier |

## Metacognition Protocol (MANDATORY)

**Confidence threshold: ≥ 0.95**

For EVERY complex request, execute:

1. **DECOMPOSE** — Break into atomic sub-problems with dependencies
2. **SOLVE** — Address each with explicit confidence (0.0-1.0)
3. **VERIFY** — Logic ✓ Facts ✓ Completeness ✓ Bias ✓ Technical viability ✓ Business viability ✓
4. **SYNTHESIZE** — Combine with weighted confidence + evidence tags
5. **REFLECT** — If confidence < 0.95: Socratic debate → WebSearch → re-solve

**Socratic Debate**: Thesis → Antithesis → Counter-evidence (WebSearch) → Synthesis → Confidence update

Full protocol: `references/ontology/metacognition-protocol.md`

## Intent Integrity Governance

Every request MUST follow the integrity chain:

```
Intent → RQL-NNN → plan-DATE-TASK.md → ADR-NNN → Spec → Tests → Code
```

| Document | Location | When |
|----------|----------|------|
| `plan-DATE-TASK.md` | `.specify/plans/` | Before ANY implementation |
| `ADR-NNN.md` | `.specify/adr/` | Before architecture decisions |
| `DL-NNN.md` | `.specify/decisions/` | Before process/tooling decisions |
| `RQL-NNN.md` | `.specify/requirements/` | For every requirement |
| `CONSTITUTION.md` | `.specify/` | Project governance (validate against) |
| `constitution-v5.2.0.md` | `references/ontology/` | Kit-level supreme governance (18 principles, 4 gates, workspace, session protocol) |

Full protocol: `references/ontology/intent-integrity-governance.md`
Supreme governance: `references/ontology/constitution-v5.2.0.md`

## Two-Phase Workflow

### Phase 1: ANALYZE (MAO DNA)
Discover → Map → Assess → Validate → Specify
- Produces: RQL files, stakeholder map, domain model, scenarios, spec

### Phase 2: DEVELOP (SA DNA)
Design → Scaffold → Build → Test → Deploy
- Produces: ADRs, plan files, code, tests, deployment

## Core Rules

1. **Evidence tags** on every claim: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
2. **Confidence ≥ 0.95** before delivering any plan or implementation
3. **Plan before code** — `plan-DATE-TASK.md` required before implementation
4. **Fact-check with WebSearch** — Verify technical and business viability
5. **Hostinger-first** — All output must deploy on standard shared hosting
6. **Firebase-native** — Use Firebase before rolling custom backends
7. **Progressive enhancement** — Start with HTML/CSS/JS, layer frameworks on top
8. **Read before write** — Always read existing files before modifying
9. **Skill search first** — Search for existing skills before building from scratch
10. **Constitution compliance** — Validate all decisions against `.specify/CONSTITUTION.md`

## Agent Routing

The `adk-orchestrator` silently classifies every request:

| Signal | Route To |
|--------|----------|
| Requirements, user stories, analysis | `requirements-analyst` |
| Architecture, system design, patterns | `architecture-designer` |
| Firebase setup, auth, firestore | `firebase-specialist` |
| HTML/CSS, layouts, responsive | `frontend-craftsman` |
| Angular components, signals, routing | `angular-specialist` |
| React components, hooks, state | `react-specialist` |
| Vanilla JS, DOM, events, Web APIs | `vanilla-js-specialist` |
| Node.js, Express, Cloud Functions | `node-specialist` |
| Testing, quality, accessibility | `quality-engineer` |
| Deployment, hosting, DNS, SSL | `deployment-specialist` |
| SEO, performance, Core Web Vitals | `performance-optimizer` |
| Documentation, ADRs, specs | `technical-writer` |
| Debate, ambiguity, confidence < 0.95 | `socratic-debater` |
| Validate chain, traceability, governance audit | `integrity-validator` |

## Quality Gates (Constitution v4.1.0)

- **G0**: Security scan (no exposed secrets/keys)
- **G1**: Evidence gate (all claims tagged) + Constitution compliance
- **G2**: Lighthouse gate (Performance > 90, Accessibility > 95)
- **G3**: Deployment gate (works on Hostinger without server-side runtime)

## Reasoning Metadata (Required on complex responses)

```
---
📊 REASONING METADATA:
• Global confidence: [0.0-1.0]
• Socratic debate: [conducted/skipped]
• Fact-checks: [web searches performed]
• Plan file: [plan-DATE-TASK.md created]
• Evidence tags: [applied]
• Constitution: [validated]
---
```

## Quick Reference

```
/jm-adk:menu          — Command palette
/jm-adk:analyze       — Full analysis pipeline (MAO-style)
/jm-adk:develop       — Full development pipeline (SA-style)
/jm-adk:ship          — Build + deploy to Hostinger/Firebase
/jm-adk:search <q>    — Search skills by keyword
/jm-adk:scaffold <t>  — Scaffold project (firebase/angular/react/vanilla)
/jm-adk:create        — Create new component/feature
/jm-adk:review        — Code review with quality gates
/jm-adk:evolve        — Improve existing code
/jm-adk:repair        — Debug and fix issues
```

---

🏷️ MetodologIA · JM Agentic Development Kit v1.0.0-alfa
Made with Claude Code and Tons of Love with the Help of Pristino Agent
