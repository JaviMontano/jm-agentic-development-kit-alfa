<p align="center">
  <img src="https://img.shields.io/badge/JM--ADK-v1.2.1-gold?style=for-the-badge&labelColor=122562" alt="Version" />
  <img src="https://img.shields.io/badge/Constitution-v5.2.0-FFD700?style=for-the-badge&labelColor=1F2833" alt="Constitution" />
  <img src="https://img.shields.io/badge/Skills-116-137DC5?style=for-the-badge&labelColor=122562" alt="Skills" />
  <img src="https://img.shields.io/badge/Agents-103-137DC5?style=for-the-badge&labelColor=122562" alt="Agents" />
</p>

<h1 align="center">JM Agentic Development Kit</h1>

<p align="center">
  <strong>Analyze like MAO · Develop like SA · Deploy to Hostinger</strong>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="MIT" /></a>
  <a href="https://github.com/JaviMontano/jm-agentic-development-kit/actions/workflows/validate.yml"><img src="https://github.com/JaviMontano/jm-agentic-development-kit/actions/workflows/validate.yml/badge.svg" alt="CI" /></a>
  <a href="https://claude.ai/claude-code"><img src="https://img.shields.io/badge/Claude_Code-Plugin-blueviolet" alt="Claude Code" /></a>
</p>

<p align="center">
  A governance-hardened, AI-powered development framework that combines<br/>
  <strong>discovery & requirements analysis</strong> (MetodologIA DNA) with<br/>
  <strong>software architecture & development</strong> (Sovereign Architect DNA).
</p>

<p align="center">
  <code>116 Skills</code> · <code>103 Agents</code> · <code>104 Commands</code> · <code>103 Prompts</code> · <code>BM25 Search</code>
</p>

---

### Get started in 60 seconds

```bash
git clone https://github.com/JaviMontano/jm-agentic-development-kit.git
claude plugin add ./jm-agentic-development-kit
```

```bash
/jm-adk:onboarding          # Guided first-use experience
```

Or go straight to building:

```bash
/jm-adk:analyze input="A task management app for small teams"
/jm-adk:scaffold-firebase
/jm-adk:ship target=firebase
```

**[Getting Started Guide](docs/getting-started.md)** · **[Component Catalog](docs/catalog.md)** · **[Architecture Diagrams](docs/architecture-diagram.md)**

---

## The Pipeline

```
 ANALYZE                                    DEVELOP
 ───────                                    ───────
 Discover → Map → Assess → Validate → Specify → Design → Scaffold → Build → Test → Deploy
     │                                           │
     ▼                                           ▼
 MetodologIA DNA                          Sovereign Architect DNA
 (requirements, flows,                    (ADRs, code, tests,
  domain model, feasibility)               quality gates, deploy)
```

<table>
<tr>
<td width="50%">

### Phase 1: ANALYZE

```bash
/jm-adk:analyze input="Your idea"
```

20 discovery agents produce: requirements (RQL), stakeholder map, domain model, flows, scenarios, feasibility, and functional spec.

</td>
<td width="50%">

### Phase 2: DEVELOP

```bash
/jm-adk:develop spec="./spec.md"
```

80+ development agents produce: ADRs, architecture, scaffolded code, tests, quality gates, and deployment.

</td>
</tr>
</table>

**Express mode** skips analysis: `/jm-adk:express input="Build a portfolio" target=hostinger`

---

## Constitution v5.2.0

The kit is governed by a **living Constitution** — 18 principles across 4 layers.

<table>
<tr>
<td width="50%" valign="top">

#### Work Philosophy

| | Principle |
|-|-----------|
| XIII | **Think First** — no action without understanding |
| XIV | **Simple First** — complexity requires justification |

#### Quality & Evolution

| | Principle |
|-|-----------|
| XV | **BDD Full-Spectrum** — 11 quality angles |
| XVI | **Sequential-First** — parallel only with WIP<=3 |
| XVII | **Continuous Learning** — debates → insights |
| XVIII | **Indexable Repo** — README per directory |

</td>
<td width="50%" valign="top">

#### Core Principles

| | Focus |
|-|-------|
| I | Client-Rendered, Cloud-Backed |
| II | Accessibility-First (WCAG 2.1 AA) |
| III | SEO Integrity |
| IV | Component Consistency |
| V | Brand Separation |
| VI | Content Authority |
| VII | Secure by Default (strip, dual-layer) |
| VIII | Offline Resilience |
| IX | Test-Driven Development |
| X | Design System (Neo-Swiss Clean) |
| XI | Brand Voice Integrity |
| XII | Code Sustainability |

</td>
</tr>
</table>

<details>
<summary><strong>Execution Discipline (XVI)</strong></summary>

```
DEFAULT → Sequential along critical path (marco logico)

PARALLEL → Only when ALL conditions met:
  1. Plan has explicit [PARALLEL-OK] tags
  2. Zero dependencies between parallel tasks
  3. WIP <= 3 agents maximum
  4. Forward-only (no task waits for another)

When in doubt → sequential.
Burden of proof is on parallelism.
```

</details>

<details>
<summary><strong>Operational Governance</strong></summary>

- **Session Protocol** — Context → recovery → pending closure → next steps
- **Operational Logs** — `changelog.md` + `tasklog.md`
- **Workspace** — Gitignored `workspace/` for user interaction
- **Quality Gates** — G0 (pre-flight) → G1 (post-spec) → G2 (post-plan) → G3 (deploy-ready)
- **Socratic Debate** — `/jm-adk:debate` when confidence < 0.95
- **Integrity Validation** — `/jm-adk:validate-chain` for governance audit
- **Continuous Learning** — Insights in `insights/<domain>.md`

</details>

**[Full Constitution](references/ontology/constitution-v5.2.0.md)**

---

## Real-World Examples

| Example | What It Shows | |
|---------|--------------|---|
| **E-Commerce Analysis** | Full discovery: requirements, domain model, flows, feasibility | [Read](docs/examples/01-ecommerce-analysis.md) |
| **Task Manager** | Scaffold → Auth → Build → Review → Deploy in 3 min | [Read](docs/examples/02-task-manager-scaffold.md) |
| **Portfolio on Hostinger** | Static site, zero deps, Lighthouse 98+ | [Read](docs/examples/03-portfolio-deploy.md) |

---

## Commands

<table>
<tr>
<td>

**Pipeline**
```
menu · analyze · develop
ship · express · onboarding
search · status · auto
```

</td>
<td>

**Discovery**
```
discover · requirements
stakeholders · domain-map
flows · scenarios · pitch
```

</td>
<td>

**Architecture**
```
architect · design-api
design-db · design-auth
design-state · adr
```

</td>
</tr>
<tr>
<td>

**Create**
```
create-page · create-component
create-form · create-api
create-crud · create-auth
```

</td>
<td>

**Quality**
```
review · audit-perf
audit-a11y · audit-security
test · lint
```

</td>
<td>

**Deploy + Governance**
```
deploy-hostinger · deploy-firebase
setup-ci · rollback
debate · validate-chain
```

</td>
</tr>
</table>

All prefixed with `/jm-adk:` — e.g., `/jm-adk:analyze`

---

## Governance Engine

```
Intent → RQL → Plan → ADR → Spec → Tests → Code
```

| Mechanism | Purpose |
|-----------|---------|
| **Constitution** | 18 principles governing every decision |
| **Evidence Tags** | `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]` |
| **Quality Gates** | G0 → G1 → G2 → G3 (none skippable) |
| **Socratic Debate** | Formal resolution when confidence < 0.95 |
| **Continuous Learning** | Debates → insights → fewer future debates |
| **Session Protocol** | Context → recovery → closure → next steps |
| **Integrity Chain** | Trace every line of code back to a requirement |

---

## Metacognition (DSVSR)

```
DECOMPOSE → SOLVE → VERIFY → SYNTHESIZE → REFLECT
                                            │
                              confidence < 0.95?
                                            │
                                    ┌───────┴───────┐
                                    │ Socratic      │
                                    │ Debate +      │
                                    │ WebSearch     │
                                    └───────┬───────┘
                                            │
                                    back to SOLVE
```

**[Deep dive](docs/advanced/metacognition-deep-dive.md)**

---

## Stack

| Layer | Technologies |
|-------|-------------|
| **Frontend** | HTML5, CSS3, Vanilla JS, Angular 18+, React 19+ |
| **Backend** | Firebase (Firestore, Auth, Functions, Hosting, Storage) |
| **Deployment** | Hostinger (SSH+Git) or Firebase Hosting |
| **Ecosystem** | Google Maps, Analytics, Workspace APIs, reCAPTCHA |
| **Build** | Vite, Angular CLI, esbuild |
| **Quality** | Lighthouse > 90, WCAG 2.1 AA, Core Web Vitals |

---

## Project Structure

```
jm-agentic-development-kit/
├── agents/              # 103 specialist agents
├── commands/            # 104 slash commands
├── skills/              # 116 skill modules (MOAT pattern)
├── prompts/             # 103 prompt templates
├── templates/           # 5 project scaffolds
├── references/ontology/ # Constitution + governance docs
├── docs/                # Human-readable docs
│   ├── getting-started.md
│   ├── catalog.md
│   ├── architecture-diagram.md
│   ├── mcp-integration.md
│   ├── advanced/
│   └── examples/
├── .agent/              # Antigravity Kit compatibility
├── .specify/            # Project governance
├── .github/             # CI + templates
├── ARCHITECTURE.md      # Master component index
├── CONTRIBUTING.md      # How to contribute
├── CHANGELOG.md         # Version history
└── SECURITY.md          # Vulnerability reporting
```

---

## Documentation

| | Document | Description |
|-|----------|-------------|
| | [Getting Started](docs/getting-started.md) | 5-minute quickstart |
| | [Component Catalog](docs/catalog.md) | Browse all agents, skills, commands |
| | [Architecture Diagrams](docs/architecture-diagram.md) | Mermaid: pipeline, DSVSR, gates |
| | [MCP Integration](docs/mcp-integration.md) | External tools and APIs |
| | [Custom Skills](docs/advanced/custom-skills.md) | Create your own |
| | [Custom Agents](docs/advanced/custom-agents.md) | Build specialists |
| | [Metacognition](docs/advanced/metacognition-deep-dive.md) | DSVSR reasoning engine |
| | [Production Deploy](docs/advanced/production-deployment.md) | Firebase or Hostinger |
| | [Constitution](references/ontology/constitution-v5.2.0.md) | Full governance (18 principles) |
| | [Contributing](CONTRIBUTING.md) | How to contribute |
| | [Changelog](CHANGELOG.md) | Version history |
| | [Security](SECURITY.md) | Vulnerability reporting |

---

## Compatibility

| Platform | How |
|----------|-----|
| **Claude Code** | `claude plugin add ./` |
| **Antigravity Kit** | Copy `.agent/` to your project |
| **Google Gemini** | `.agent/rules/GEMINI.md` |
| **Any AI IDE** | Standard Markdown — universal |

---

## Community

- [GitHub Issues](https://github.com/JaviMontano/jm-agentic-development-kit/issues) — Bugs and features
- [GitHub Discussions](https://github.com/JaviMontano/jm-agentic-development-kit/discussions) — Questions and ideas
- [Contributing Guide](CONTRIBUTING.md) — Add skills, agents, commands

---

## Author

**[Javier Montano](https://linkedin.com/in/montaño-guzman)** — GenAI Champion & Digital Transformation Leader at Sofka Technologies. +13 years driving strategic initiatives across 6 countries, integrating AI into business workflows to reduce cycle time by 30% and increase operational efficiency by 20%. Creator of MetodologIA, the method-driven methodology for evidence-based consulting. Co-authored this kit with Claude Code (Anthropic) and the Pristino Agent — a human-AI collaboration that produced 116 skills, 103 agents, and a living Constitution in a single development session.

## Credits

- **[MetodologIA](https://metodologia.info)** — Discovery methodology and analysis pipeline (by Javier Montano)
- **Sovereign Architect** — Software architecture and development skills
- **Antigravity Kit** by vudovn — Agent/skill organization patterns
- **Intent Integrity Kit** — Requirement governance and integrity chain
- **Claude Code** by Anthropic — AI pair-programming engine
- **Pristino Agent** — Love, care, and attention to detail

### Special Thanks

- **Duber Lopez** — The rigorous review that demanded productization. A 7.5 that pushed us to 10+ is worth more than a 10 that was never challenged.
- **Blockito** — From 101 to 116 skills, Constitution v5.2.0, Socratic debate, BDD full-spectrum, session protocol, continuous learning — all built in one session.

---

<p align="center">
  <strong>MIT License</strong> — Copyright (c) 2026 JM Labs (Javier Montaño)
</p>

<p align="center">
  <em>Made with Claude Code and Tons of Love with the Help of Pristino Agent</em>
</p>
