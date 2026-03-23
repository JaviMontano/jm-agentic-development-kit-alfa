# JM Agentic Development Kit (JM-ADK) v1.0.0-alfa

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![CI: Validate](https://github.com/JaviMontano/jm-agentic-development-kit/actions/workflows/validate.yml/badge.svg)](https://github.com/JaviMontano/jm-agentic-development-kit/actions/workflows/validate.yml)
[![Claude Code](https://img.shields.io/badge/Claude_Code-Plugin-blueviolet)](https://claude.ai/claude-code)
[![Skills](https://img.shields.io/badge/Skills-101-green)]()
[![Agents](https://img.shields.io/badge/Agents-101-green)]()
[![Commands](https://img.shields.io/badge/Commands-102-green)]()
[![Prompts](https://img.shields.io/badge/Prompts-101-green)]()

> **Analyze like MAO · Develop like SA · Deploy to Hostinger**

The **JM Agentic Development Kit** is an AI-powered development framework that combines **discovery & requirements analysis** (MetodologIA DNA) with **software architecture & development** (Sovereign Architect DNA) into a single toolkit for Claude Code.

**101 Skills · 101 Agents · 102 Commands · 101 Prompts · BM25 Skill Search**

> **New here?** Run `/jm-adk:onboarding` after installing — it walks you through your first project in 3 minutes.

---

## Quick Start

```bash
# 1. Clone
git clone https://github.com/JaviMontano/jm-agentic-development-kit.git

# 2. Install as Claude Code plugin
claude plugin add ./jm-agentic-development-kit

# 3. Open the command palette
/jm-adk:menu
```

**First project in 3 minutes:**

```bash
# Analyze a project idea
/jm-adk:analyze input="A task management app for small teams"

# Scaffold it
/jm-adk:scaffold-firebase

# Deploy it
/jm-adk:ship target=firebase
```

See the [Getting Started Guide](docs/getting-started.md) for a full walkthrough.

## Real-World Examples

| Example | What It Shows | Guide |
|---------|--------------|-------|
| E-Commerce Analysis | Full discovery pipeline: requirements, domain model, flows, feasibility | [Read](docs/examples/01-ecommerce-analysis.md) |
| Task Manager | Scaffold → Auth → Build → Review → Deploy in 3 minutes | [Read](docs/examples/02-task-manager-scaffold.md) |
| Portfolio on Hostinger | Static site: zero dependencies, Lighthouse 98+, free hosting | [Read](docs/examples/03-portfolio-deploy.md) |

## What's Different

| Feature | Antigravity Kit | JM-ADK |
|---------|----------------|--------|
| Agents | 20 | **101** |
| Skills | 37 | **101** |
| Workflows | 11 | **11 + 101 commands** |
| Requirements analysis | No | **Full MAO pipeline** |
| Metacognition | No | **DECOMPOSE → SOLVE → VERIFY → SYNTHESIZE → REFLECT** |
| Confidence threshold | No | **>= 0.95 mandatory** |
| Fact-checking | No | **WebSearch verification** |
| Decision governance | No | **ADR + DL + RQL + Constitution** |
| Skill search | UI/UX only | **All domains (BM25)** |
| Stack focus | General | **Firebase + HTML/CSS/JS + Hostinger** |

## Stack

| Layer | Technologies |
|-------|-------------|
| **Frontend** | HTML5, CSS3, Vanilla JS, Angular 18+, React 19+ |
| **Backend** | Firebase (Firestore, Auth, Functions, Hosting, Storage) |
| **Deployment** | Hostinger (shared hosting) or Firebase Hosting |
| **Ecosystem** | Google Maps, Analytics, Workspace APIs, reCAPTCHA |
| **Build** | Vite, Angular CLI, esbuild |
| **Quality** | Lighthouse > 90, WCAG 2.1 AA, Core Web Vitals |

## Two-Phase Workflow

### Phase 1: ANALYZE (MetodologIA DNA)

```bash
/jm-adk:analyze input="Your project description"
```

Discover → Map → Assess → Validate → Specify

Produces: Requirements, stakeholder map, domain model, scenarios, functional spec.

### Phase 2: DEVELOP (Sovereign Architect DNA)

```bash
/jm-adk:develop spec="./docs/spec.md"
```

Design → Scaffold → Build → Test → Deploy

Produces: ADRs, architecture diagrams, code, tests, deployment.

### Express Mode

```bash
/jm-adk:express input="Build a portfolio site" target=hostinger
```

Skip analysis → scaffold → develop → deploy.

## Commands

| Category | Commands |
|----------|----------|
| **Pipeline** | `menu`, `analyze`, `develop`, `ship`, `express`, `guided`, `auto`, `search`, `status` |
| **Discovery** | `discover`, `requirements`, `stakeholders`, `domain-map`, `flows`, `scenarios`, `feasibility`, `pitch` |
| **Architecture** | `architect`, `design-api`, `design-db`, `design-auth`, `design-state`, `adr` |
| **Scaffold** | `scaffold-firebase`, `scaffold-angular`, `scaffold-react`, `scaffold-vanilla` |
| **Create** | `create-page`, `create-component`, `create-form`, `create-api`, `create-crud`, `create-auth` |
| **Quality** | `review`, `audit-perf`, `audit-a11y`, `audit-security`, `test`, `lint` |
| **Deploy** | `deploy-hostinger`, `deploy-firebase`, `setup-ci`, `rollback` |

All commands are prefixed with `/jm-adk:` (e.g., `/jm-adk:analyze`).

## Governance

Every request follows the **Intent Integrity Chain**:

```
Intent → RQL → Plan → ADR → Spec → Tests → Code
```

- **Constitution** — Project governance rules (7 articles)
- **Plan files** — Required before any implementation
- **ADRs** — Architecture Decision Records for design choices
- **Evidence tags** — Every claim tagged: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
- **Quality Gates** — G0 (Security) → G1 (Evidence) → G2 (Lighthouse) → G3 (Deployment)

## Metacognition

Every complex response goes through the DSVSR cycle:

1. **DECOMPOSE** — Break into atomic sub-problems
2. **SOLVE** — Address each with confidence scoring (0.0-1.0)
3. **VERIFY** — Logic, facts, completeness, bias, viability
4. **SYNTHESIZE** — Combine with weighted confidence
5. **REFLECT** — If confidence < 0.95: Socratic debate → WebSearch → re-solve

[Deep dive into metacognition](docs/advanced/metacognition-deep-dive.md)

## Project Structure

```
jm-agentic-development-kit/
├── agents/              # 101 specialist agent definitions
├── commands/            # 101 user-invocable slash commands
├── skills/              # 101 skill modules (MOAT pattern)
├── prompts/             # 101 reusable prompt templates
├── templates/           # 5 project scaffolding templates
├── hooks/               # Session automation hooks
├── references/          # Governance ontology + RAG priming
├── docs/                # Human-readable documentation
│   ├── getting-started.md
│   ├── mcp-integration.md
│   ├── advanced/        # Deep dives
│   └── examples/        # Real-world walkthroughs
├── .agent/              # Antigravity Kit compatibility
├── .specify/            # Governance documents
├── ARCHITECTURE.md      # Master index of all components
├── CLAUDE.md            # AI system instructions
├── CONTRIBUTING.md      # How to contribute
└── CHANGELOG.md         # Version history
```

## Architecture

See [Architecture Diagrams](docs/architecture-diagram.md) for visual overviews of the pipeline, metacognition cycle, quality gates, and agent routing — all in Mermaid.

## Documentation

| Document | Description |
|----------|-------------|
| [Getting Started](docs/getting-started.md) | 5-minute quickstart guide |
| [Component Catalog](docs/catalog.md) | Browsable index of all agents, skills, and commands |
| [Architecture Diagrams](docs/architecture-diagram.md) | Visual pipeline, DSVSR cycle, quality gates |
| [MCP Integration](docs/mcp-integration.md) | Connect external tools and APIs |
| [Custom Skills](docs/advanced/custom-skills.md) | Create your own skills |
| [Custom Agents](docs/advanced/custom-agents.md) | Create specialist agents |
| [Metacognition Deep Dive](docs/advanced/metacognition-deep-dive.md) | How the reasoning engine works |
| [Production Deployment](docs/advanced/production-deployment.md) | Deploy to Firebase or Hostinger |
| [Contributing](CONTRIBUTING.md) | How to contribute |
| [Changelog](CHANGELOG.md) | Version history |
| [Security Policy](SECURITY.md) | Vulnerability reporting |
| [Architecture Index](ARCHITECTURE.md) | Master index of all components (raw) |

## Compatibility

| Platform | Format | How |
|----------|--------|-----|
| **Claude Code** | Native plugin | `claude plugin add ./` |
| **Antigravity Kit** | `.agent/` directory | Copy `.agent/` to your project |
| **Google Gemini** | Rules file | `.agent/rules/GEMINI.md` |
| **Any AI IDE** | Markdown skills | Skills are standard Markdown — universal |

## Skill Search

```bash
# CLI search (BM25 full-text)
python3 .agent/scripts/search_skills.py "firebase auth"
python3 .agent/scripts/search_skills.py "landing page" --domain frontend
python3 .agent/scripts/search_skills.py --list-all

# In-session search
/jm-adk:search "responsive form"
```

## Community

- [GitHub Issues](https://github.com/JaviMontano/jm-agentic-development-kit/issues) — Bug reports and feature requests
- [GitHub Discussions](https://github.com/JaviMontano/jm-agentic-development-kit/discussions) — Questions and ideas
- [Contributing Guide](CONTRIBUTING.md) — How to add skills, agents, and commands

## Credits

- **MetodologIA** — Discovery methodology and analysis pipeline
- **Sovereign Architect** — Software architecture and development skills
- **Antigravity Kit** by vudovn — Agent/skill organization patterns
- **Intent Integrity Kit** — Requirement governance and integrity chain
- **Pristino Agent** — Love, care, and attention to detail

### Special Thanks

- **Duber Lopez** — Rigorous review, actionable feedback, and the push to productize. The documentation overhaul, real-world examples, CI pipeline, catalog, and onboarding experience exist because of his thorough evaluation. A 7.5 that demanded a 10 is worth more than a 10 that was never challenged.
- **Blockito** — The builder behind the execution. Turned feedback into 22 new files, 7 Mermaid diagrams, 5 CI jobs, and a complete DX transformation in one session.

## License

[MIT](LICENSE) — Copyright (c) 2026 JM Labs (Javier Montaño)

---

Made with Claude Code and Tons of Love with the Help of Pristino Agent
