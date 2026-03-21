# JM Agentic Development Kit (JM-ADK) v1.0.0-alfa

> **Analyze like MAO · Develop like SA · Deploy to Hostinger**
>
> Made with Claude Code and Tons of Love with the Help of Pristino Agent

The **JM Agentic Development Kit** is a comprehensive AI-powered development framework that combines **discovery & requirements analysis** (MetodologIA DNA) with **software architecture & development** (Sovereign Architect DNA) into a single, integrated toolkit.

**101 Skills · 101 Agents · 101 Prompts · BM25 Skill Search**

## What's Different

| Feature | Antigravity Kit | JM-ADK |
|---------|----------------|--------|
| Agents | 20 | **101** |
| Skills | 37 | **101** |
| Workflows | 11 | **11 + 101 commands** |
| Requirements analysis | No | **Full MAO pipeline** |
| Metacognition | No | **DECOMPOSE→SOLVE→VERIFY→SYNTHESIZE→REFLECT** |
| Confidence threshold | No | **≥ 0.95 mandatory** |
| Fact-checking | No | **WebSearch verification** |
| Decision governance | No | **ADR + DL + RQL + Constitution** |
| Skill search | UI/UX only (BM25) | **All domains (BM25)** |
| Stack focus | General | **Firebase + HTML/CSS/JS + Hostinger** |
| Integrity chain | No | **Intent → RQL → Plan → ADR → Tests → Code** |

## Stack Focus

- **Frontend**: HTML5, CSS3, Vanilla JS, Angular 18+, React 19+
- **Backend**: Firebase (Firestore, Auth, Functions, Hosting, Storage)
- **Deployment**: Hostinger (shared hosting) or Firebase Hosting
- **Google Ecosystem**: Maps, Analytics, Workspace APIs, reCAPTCHA
- **Build**: Vite, Angular CLI, esbuild
- **Quality**: Lighthouse > 90, WCAG 2.1 AA, Core Web Vitals

## Quick Start

### As Claude Code Plugin
```bash
# Install from repository
claude plugin add ./jm-agentic-development-kit

# Start using
/jm-adk:menu
```

### As Antigravity-style .agent/ folder
```bash
# Copy .agent/ directory to your project
cp -r jm-agentic-development-kit/.agent/ your-project/.agent/
```

### Skill Search
```bash
# Search skills by keyword
python .agent/scripts/search_skills.py "firebase auth"
python .agent/scripts/search_skills.py "landing page" --domain frontend
python .agent/scripts/search_skills.py --list-all
```

## Workflow

### Phase 1: ANALYZE (MetodologIA DNA)
```
/jm-adk:analyze
```
Discover → Map → Assess → Validate → Specify

Produces: Requirements (RQL), stakeholder map, domain model, scenarios, functional spec

### Phase 2: DEVELOP (Sovereign Architect DNA)
```
/jm-adk:develop
```
Design → Scaffold → Build → Test → Deploy

Produces: ADRs, plan files, architecture diagrams, code, tests, deployment

### Express Mode
```
/jm-adk:express
```
Quick scaffold → develop → deploy (skip analysis)

## Governance

Every request follows the **Intent Integrity Chain**:

```
Intent → RQL → Plan → ADR → Spec → Tests → Code
```

- `plan-DATE-TASK.md` — Created before any implementation
- `ADR-NNN.md` — Architecture Decision Records
- `DL-NNN.md` — Decision Logs
- `RQL-NNN.md` — Requirement Logs
- `CONSTITUTION.md` — Project governance

## Metacognition

Every complex response goes through:

1. **DECOMPOSE** — Break problem into atomic sub-problems
2. **SOLVE** — Address each with explicit confidence score
3. **VERIFY** — Logic, facts, completeness, bias, viability checks
4. **SYNTHESIZE** — Combine with weighted confidence
5. **REFLECT** — If confidence < 0.95: Socratic debate + WebSearch

## Project Structure

```
jm-agentic-development-kit/
├── .agent/                    # Antigravity-compatible format
│   ├── ARCHITECTURE.md
│   ├── skills/                # 101 skills (symlinked)
│   ├── agents/                # Agent definitions
│   ├── workflows/             # 11 workflow files
│   ├── rules/GEMINI.md        # Global rules
│   ├── scripts/               # Search + validation
│   └── skills_index.json      # Machine-readable catalog
├── .specify/                  # Governance documents
│   ├── CONSTITUTION.md
│   ├── plans/                 # plan-DATE-TASK.md files
│   ├── adr/                   # Architecture Decision Records
│   ├── decisions/             # Decision Logs
│   ├── requirements/          # Requirement Logs (RQL)
│   └── specs/                 # Feature specifications
├── .claude-plugin/            # Claude Code plugin manifest
├── agents/                    # 101 agent definitions
├── commands/                  # 101 command definitions
├── skills/                    # 101 skill modules
├── prompts/                   # 101 prompt templates
├── references/ontology/       # Governance docs
├── templates/                 # Project scaffolding
├── CLAUDE.md                  # AI instructions
└── ARCHITECTURE.md            # Master index
```

## Available Commands

| Category | Commands |
|----------|----------|
| **Pipeline** | `menu`, `analyze`, `develop`, `ship`, `express`, `guided`, `auto`, `search`, `init`, `status` |
| **Discovery** | `discover`, `requirements`, `stakeholders`, `domain-map`, `flows`, `scenarios`, `feasibility`, `pitch` |
| **Architecture** | `architect`, `design-api`, `design-db`, `design-auth`, `design-state`, `adr` |
| **Scaffold** | `scaffold`, `scaffold-firebase`, `scaffold-angular`, `scaffold-react`, `scaffold-vanilla` |
| **Create** | `create`, `create-page`, `create-component`, `create-form`, `create-api`, `create-crud`, `create-auth` |
| **Quality** | `review`, `audit-perf`, `audit-a11y`, `audit-security`, `test`, `lint` |
| **Deploy** | `deploy`, `deploy-hostinger`, `deploy-firebase`, `setup-ci`, `rollback` |

## Compatibility

- **Claude Code** — Native plugin format
- **Antigravity Kit** — `.agent/` directory format
- **Google Gemini** — Via `GEMINI.md` rules file
- **OpenAI Codex** — Via symlinked `.codex/` directory
- **Any AI IDE** — Standard Markdown skills are universal

## Credits

- **MetodologIA** — Discovery methodology and analysis pipeline
- **Sovereign Architect** — Software architecture and development skills
- **Antigravity Kit** by vudovn — Agent/skill organization patterns
- **Intent Integrity Kit** — Requirement governance and integrity chain
- **Pristino Agent** — Love, care, and attention to detail

## License

MIT

---

🏷️ **MetodologIA · JM Agentic Development Kit**
Made with Claude Code and Tons of Love with the Help of Pristino Agent

© 2026 JM Labs (Javier Montaño)
