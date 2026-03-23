# Changelog

All notable changes to the JM Agentic Development Kit will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.2.0] - 2026-03-22

### Added — Constitution v5.1.0 Upgrade
- `references/ontology/constitution-v5.1.0.md` — 18 principles (added XVII Continuous Learning, XVIII Indexable Repository), Workspace section, Session Protocol, Operational Logs
- **7 New Skills**: `continuous-learning`, `session-protocol`, `workspace-governance`, `changelog-management`, `tasklog-management`, `indexability-validator`, `repository-organization`

### Changed
- Constitution upgraded from v4.1.0 to v5.1.0
- `adk-orchestrator` agent — Added session-protocol and continuous-learning skills, v5.1.0 reference
- `quality-guardian` agent — Added indexability-validator and continuous-learning skills
- `plugin.json` — Bumped to v1.2.0 with 116 skills count

## [1.1.0] - 2026-03-22

### Added — Constitution v4.1.0 Integration
- `references/ontology/constitution-v4.1.0.md` — Supreme governance document (16 principles, 4 quality gates, Socratic debate mechanism)
- **8 New Skills**: `socratic-debate`, `bdd-full-spectrum`, `input-sanitization`, `parallel-workflow`, `ssh-deployment`, `integrity-chain-validation`, `dual-layer-verification`, `lighthouse-ci`
- **2 New Agents**: `socratic-debater` (structured debate when confidence < 0.95), `integrity-validator` (governance chain validation)
- **2 New Commands**: `/jm-adk:debate` (trigger Socratic debate), `/jm-adk:validate-chain` (validate integrity chain)
- **2 New Prompts**: `86-bdd-full-spectrum.md` (multi-angle Gherkin generation), `102-socratic-debate.md` (debate protocol)

### Changed — Harmonization
- `security-testing` skill — Added sanitization hierarchy (strip > escape > allowlist), dual-layer verification
- `test-strategy` skill — Added BDD full-spectrum angles, runner-agnostic Gherkin
- `e2e-testing` skill — Added production URL verification, parallel browser matrix
- `code-review` skill — Added sustainability assessment (Constitution XII)
- `discovery-orchestration` skill — Added plan file generation, Constitution phase gates, Socratic trigger
- `adk-orchestrator` agent — Added Constitution awareness, Socratic routing, Think-Act-Verify workflow
- `quality-guardian` agent — Reconciled G0-G3 with Constitution definitions
- `pipeline-conductor` agent — Added parallel workflow support (Constitution XVI)
- `security-scanner` agent — Added input sanitization audit, dual-layer verification

## [Unreleased]

### Added
- `docs/getting-started.md` — 5-minute quickstart guide
- `docs/mcp-integration.md` — MCP server integration guide
- `docs/catalog.md` — Interactive browsable catalog of all 101 agents, skills, commands
- `docs/architecture-diagram.md` — Mermaid diagrams: pipeline, DSVSR, quality gates, routing
- `docs/advanced/` — Custom skills, custom agents, metacognition deep-dive, production deployment
- `docs/examples/` — Real-world walkthrough examples (e-commerce, task manager, portfolio)
- `commands/onboarding.md` — Guided first-use experience (`/jm-adk:onboarding`)
- `CONTRIBUTING.md` — Contribution guide with Code of Conduct
- `SECURITY.md` — Security policy and vulnerability reporting
- `CHANGELOG.md` — Version history with semantic versioning
- `.github/workflows/validate.yml` — CI: validates frontmatter, counts, links, secrets
- `.github/PULL_REQUEST_TEMPLATE.md` — PR template
- `.github/ISSUE_TEMPLATE/` — Bug report and feature request templates

### Changed
- `README.md` — Rewritten for adoption: badges, onboarding CTA, examples table, docs table, community links

## [1.0.0-alfa] - 2026-03-15

### Added
- **101 Specialist Agents** across 8 categories: Orchestration (5), Discovery (20), Architecture (20), Frontend (20), Backend/Firebase (15), Quality/Testing (12), Deployment (5), Documentation (4)
- **101 Reusable Skills** across 6 domains: Discovery (20), Architecture (20), Frontend (25), Backend/Firebase (20), Quality (10), Deployment (6)
- **101 Slash Commands** for the full development lifecycle: pipeline, discovery, architecture, scaffold, create, quality, deploy
- **101 Prompt Templates** in 6 categories: Discovery (20), Architecture (20), Development (30), Quality (15), Deployment (10), Meta (6)
- **11 Master Workflows**: analyze, develop, scaffold, create, review, evolve, repair, search, ship, menu, status
- **5 Project Templates**: firebase, react, angular, vanilla-js, node-api
- **Governance Framework**: Constitution (7 articles), Intent Integrity Chain, Metacognition Protocol (DSVSR)
- **Quality Gates**: G0 (Security), G1 (Evidence + Constitution), G2 (Lighthouse), G3 (Deployment)
- **Dual Format Support**: Claude Code plugin + Antigravity Kit (`.agent/` directory)
- **Automation**: SessionStart hook, PostToolUse validation, BM25 skill search, skills index generation
- **Stack**: HTML5/CSS3/JS + Angular 18+ + React 19+ + Firebase + Hostinger + Google Ecosystem

### Technical Details
- Plugin manifest: `.claude-plugin/plugin.json`
- Antigravity manifest: `.agent/skills_index.json` (607 lines)
- Python scripts: `generate_index.py`, `search_skills.py`, `validate_skills.py`
- Governance: `.specify/CONSTITUTION.md` with 7 articles
- Metacognition: DECOMPOSE → SOLVE → VERIFY → SYNTHESIZE → REFLECT

---

## Breaking Changes Policy

This project follows semantic versioning:

- **Major** (x.0.0): Breaking changes to skill structure, agent API, or governance model
- **Minor** (0.x.0): New skills, agents, commands, or prompts (backward-compatible)
- **Patch** (0.0.x): Bug fixes, doc improvements, minor enhancements

During the `alfa` phase, breaking changes may occur in minor versions. After `1.0.0` stable release, breaking changes will only occur in major versions with migration guides.

[Unreleased]: https://github.com/JaviMontano/jm-agentic-development-kit/compare/v1.0.0-alfa...HEAD
[1.0.0-alfa]: https://github.com/JaviMontano/jm-agentic-development-kit/releases/tag/v1.0.0-alfa
