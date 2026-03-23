<p align="center">
  <img src="https://img.shields.io/badge/JM--ADK-v1.2.1-gold?style=for-the-badge&labelColor=122562" alt="Version" />
  <img src="https://img.shields.io/badge/Skills-116-137DC5?style=for-the-badge&labelColor=122562" alt="Skills" />
  <img src="https://img.shields.io/badge/Agents-103-137DC5?style=for-the-badge&labelColor=122562" alt="Agents" />
</p>

<h1 align="center">JM Agentic Development Kit</h1>

<p align="center">
  <strong>Tell the AI what you want to build. It analyzes, designs, codes, tests, and deploys.</strong>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="MIT" /></a>
  <a href="https://github.com/JaviMontano/jm-agentic-development-kit/actions/workflows/validate.yml"><img src="https://github.com/JaviMontano/jm-agentic-development-kit/actions/workflows/validate.yml/badge.svg" alt="CI" /></a>
  <a href="https://claude.ai/claude-code"><img src="https://img.shields.io/badge/Claude_Code-Plugin-blueviolet" alt="Claude Code" /></a>
</p>

---

## What is this?

JM-ADK is a toolkit that turns your AI assistant into a **full development team**.

You describe what you want — a website, an app, a dashboard. The kit activates specialized AI agents that analyze your idea, design the solution, write the code, test it, and deploy it. Each agent is an expert in one thing: one designs databases, another writes HTML, another checks security.

**116 agents working together. You give the direction.**

## What problem does it solve?

Building software with AI is powerful but chaotic. Without structure, the AI guesses, skips steps, forgets context, and produces inconsistent results.

JM-ADK solves this by giving the AI:

- **A method** — every project follows the same proven path: understand first, then design, then build, then test, then deploy
- **Rules** — 18 governance principles that prevent shortcuts, enforce quality, and keep the AI honest
- **Specialists** — instead of one generalist AI doing everything, 103 focused agents do what they're best at
- **Memory** — decisions are recorded, lessons are learned, mistakes are never repeated

The result: **predictable, high-quality output every time**.

## What can you build with it?

| Project | Example Command | Deploy To |
|---------|----------------|-----------|
| Portfolio website | `/jm-adk:express input="Developer portfolio"` | Hostinger |
| Task manager app | `/jm-adk:scaffold-firebase` | Firebase |
| E-commerce platform | `/jm-adk:analyze input="Artisan products marketplace"` | Firebase |
| Landing page | `/jm-adk:express input="SaaS landing page" target=hostinger` | Hostinger |
| Admin dashboard | `/jm-adk:create-dashboard` | Firebase |
| Blog with CMS | `/jm-adk:scaffold-vanilla` | Hostinger |

**Tech stack**: HTML, CSS, JavaScript, Angular, React, Firebase, Hostinger. All Google-ecosystem friendly.

---

## How it works — 3 steps

### Step 1: You describe what you want

```
"I need a task management app where teams can create tasks,
assign them, and track progress in real time."
```

### Step 2: The AI analyzes, designs, and builds

The kit activates the right agents in sequence:

```
Your idea
  → Requirements analyst (what exactly do you need?)
  → Domain modeler (what are the data structures?)
  → Architecture designer (how should it be built?)
  → Frontend craftsman (HTML, CSS, JavaScript)
  → Firebase specialist (database, auth, hosting)
  → Quality engineer (does it work? is it accessible? is it secure?)
```

Each agent does its job and passes the result to the next one. Like an assembly line, but for software.

### Step 3: You get a working, deployed project

The output is real code — tested, accessible, secure, and deployed to a live URL.

---

## Getting started

### What you need

- [Claude Code](https://claude.ai/claude-code) installed on your computer
- A terminal (the app where you type commands)

### Install (60 seconds)

```bash
git clone https://github.com/JaviMontano/jm-agentic-development-kit.git
claude plugin add ./jm-agentic-development-kit
```

### Your first project (3 minutes)

```bash
/jm-adk:onboarding
```

This walks you through building your first project step by step. It asks what you want to build, recommends an approach, and guides you through the process.

Or go straight to building:

```bash
/jm-adk:analyze input="A task management app for small teams"
/jm-adk:scaffold-firebase
/jm-adk:ship target=firebase
```

**[Full getting started guide](docs/getting-started.md)**

---

## The two phases

Every project goes through two phases. You can run them separately or together.

<table>
<tr>
<td width="50%" valign="top">

### Phase 1: Analyze

**What**: Understand the problem before writing code.

**Command**: `/jm-adk:analyze input="your idea"`

**What you get**:
- Requirements document
- Data model (what information the app manages)
- User flows (how people use it)
- Feasibility check (can it actually be built this way?)
- Cost and effort estimate

**Why it matters**: Building the wrong thing is the most expensive mistake. Analysis prevents it.

</td>
<td width="50%" valign="top">

### Phase 2: Develop

**What**: Design, build, test, and deploy.

**Command**: `/jm-adk:develop`

**What you get**:
- Architecture decisions (documented, not guessed)
- Working code (HTML/CSS/JS or Angular/React)
- Database setup (Firebase)
- Tests (automated, not manual)
- Live deployment (Hostinger or Firebase)

**Why it matters**: Code without architecture becomes unmaintainable. Tests without structure become unreliable.

</td>
</tr>
</table>

**Want to skip analysis?** Use express mode:
```bash
/jm-adk:express input="Build a portfolio site" target=hostinger
```

---

## What makes it different

### vs. using AI without a kit

| Without JM-ADK | With JM-ADK |
|----------------|-------------|
| AI guesses what you want | AI asks, analyzes, validates |
| No structure — results vary | Same method every time |
| One generalist agent | 103 specialist agents |
| No quality checks | 4 quality gates before deploy |
| Context lost between sessions | Decisions recorded and reused |
| You manage the AI | The kit manages itself |

### vs. other agentic kits

| Feature | Other kits | JM-ADK |
|---------|-----------|--------|
| Specialist agents | 20-40 | **103** |
| Reusable skills | 30-40 | **116** |
| Governance | None | **18-principle Constitution** |
| Analysis pipeline | None | **Full discovery methodology** |
| Quality gates | None | **G0 → G1 → G2 → G3** |
| Learning system | None | **Debates produce reusable insights** |

---

## Real examples (with full walkthroughs)

### Example 1: Analyzing an e-commerce idea

You type: `/jm-adk:analyze input="E-commerce for artisan products"`

You get: A 5-page analysis with user stories, domain model (Products, Orders, Users), payment flow, Firestore data design, and a cost estimate ($6/month + Stripe fees).

**[See the full walkthrough](docs/examples/01-ecommerce-analysis.md)**

### Example 2: Building a task manager from zero

You type 5 commands. In 3 minutes you have: a Firebase project with authentication, a real-time task board, security rules, and a live URL.

**[See the full walkthrough](docs/examples/02-task-manager-scaffold.md)**

### Example 3: Portfolio site on cheap hosting

You type one command. You get: a static portfolio with Lighthouse score 98+, accessibility score 100, zero JavaScript dependencies, ready for Hostinger shared hosting.

**[See the full walkthrough](docs/examples/03-portfolio-deploy.md)**

---

## Common commands

Here are the commands you'll use most. All start with `/jm-adk:`.

### Getting started
| Command | What it does |
|---------|-------------|
| `onboarding` | Guided first-use experience |
| `menu` | Show all available commands |
| `search "keyword"` | Find the right skill for your task |

### Building things
| Command | What it does |
|---------|-------------|
| `analyze input="..."` | Understand a project idea |
| `scaffold-firebase` | Create a Firebase project from scratch |
| `scaffold-react` | Create a React + Firebase project |
| `create-page name="..."` | Add a new page |
| `create-component name="..."` | Add a new UI component |
| `create-auth` | Add login/signup |

### Quality checks
| Command | What it does |
|---------|-------------|
| `review` | Full code review with quality gates |
| `audit-perf` | Check page speed (Lighthouse) |
| `audit-a11y` | Check accessibility (WCAG) |
| `audit-security` | Check for security issues |

### Deploying
| Command | What it does |
|---------|-------------|
| `ship target=firebase` | Deploy to Firebase Hosting |
| `ship target=hostinger` | Deploy to Hostinger |

### Governance
| Command | What it does |
|---------|-------------|
| `debate topic="..."` | Structured debate to resolve a tough decision |
| `validate-chain` | Check that every piece of code traces to a requirement |

---

## How quality is enforced

Every project passes through 4 checkpoints before it's considered done. No shortcuts.

| Gate | When | What it checks |
|------|------|---------------|
| **G0** | Before starting | No secrets in code, branch created, rules acknowledged |
| **G1** | After specification | Requirements complete, acceptance criteria defined |
| **G2** | After design | Architecture documented, tests written, performance budgets set |
| **G3** | Before deploying | All tests pass, Lighthouse > 90, accessibility clean, security clean |

If a gate fails, work stops until the issue is fixed. This is intentional — it's cheaper to fix problems early than to fix them in production.

---

## How the AI thinks

For simple tasks, the AI just does it. For complex tasks, it follows a 5-step reasoning process:

1. **Break down** the problem into smaller parts
2. **Solve** each part with a confidence score (0 to 1.0)
3. **Verify** — is the logic sound? Are the facts right? Is anything missing?
4. **Combine** the solutions into a coherent answer
5. **Reflect** — if confidence is below 0.95, debate the approach and try again

This prevents the AI from guessing. If it's not confident, it asks questions or searches for evidence instead of making things up.

**[How metacognition works (deep dive)](docs/advanced/metacognition-deep-dive.md)**

---

## Technologies used

| What | Technologies |
|------|-------------|
| **Frontend** | HTML5, CSS3, JavaScript, Angular 18+, React 19+ |
| **Backend** | Firebase (database, auth, storage, hosting, cloud functions) |
| **Hosting** | Hostinger (shared hosting, $3/month) or Firebase Hosting (free tier) |
| **Google services** | Maps, Analytics, Workspace APIs, reCAPTCHA |
| **Quality** | Lighthouse (speed), WCAG 2.1 AA (accessibility), Core Web Vitals |

---

## Documentation

| Document | For whom | What you'll learn |
|----------|---------|-------------------|
| **[Getting Started](docs/getting-started.md)** | Everyone | Install and build your first project (5 min) |
| **[Examples](docs/examples/)** | Everyone | Real walkthroughs: e-commerce, task manager, portfolio |
| **[Component Catalog](docs/catalog.md)** | Developers | Browse all 116 skills and 103 agents |
| **[Architecture Diagrams](docs/architecture-diagram.md)** | Developers | Visual: pipeline, quality gates, agent routing |
| **[Custom Skills](docs/advanced/custom-skills.md)** | Contributors | Create your own skills |
| **[Custom Agents](docs/advanced/custom-agents.md)** | Contributors | Build specialist agents |
| **[MCP Integration](docs/mcp-integration.md)** | Advanced | Connect external tools and APIs |
| **[Production Deploy](docs/advanced/production-deployment.md)** | DevOps | Firebase and Hostinger deployment guide |
| **[Constitution](references/ontology/constitution-v5.2.0.md)** | Governance | Full 18-principle governance document |
| **[Contributing](CONTRIBUTING.md)** | Contributors | How to contribute |
| **[Changelog](CHANGELOG.md)** | Everyone | Version history |

---

## Works with

| Platform | How to use |
|----------|-----------|
| **Claude Code** | `claude plugin add ./` (recommended) |
| **Antigravity Kit** | Copy `.agent/` folder to your project |
| **Google Gemini** | Use `.agent/rules/GEMINI.md` |
| **Any AI editor** | Skills are Markdown files — they work anywhere |

---

## Community

- **[Report a bug](https://github.com/JaviMontano/jm-agentic-development-kit/issues)** — Something broken? Let us know
- **[Ask a question](https://github.com/JaviMontano/jm-agentic-development-kit/discussions)** — Stuck? We help
- **[Contribute](CONTRIBUTING.md)** — Add skills, agents, or commands

---

## About

Created by **[Javier Montano](https://linkedin.com/in/montaño-guzman)** — GenAI Champion and Digital Transformation Leader with 13+ years of experience across 6 countries. Creator of [MetodologIA](https://metodologia.info), the method-driven methodology for evidence-based consulting.

Co-authored with **Claude Code** (Anthropic) and **Pristino Agent** — a human-AI collaboration that produced 116 skills, 103 agents, and a living Constitution in a single development session.

### Credits

**MetodologIA** · **Sovereign Architect** · **Antigravity Kit** (vudovn) · **Intent Integrity Kit** · **Claude Code** (Anthropic)

### Special thanks

- **Duber Lopez** — The rigorous review that pushed the kit from a 7.5 to a 10. Good feedback is the most valuable gift a project can receive.
- **Blockito** — The builder. 116 skills, Constitution v5.2.0, Socratic debate, BDD full-spectrum, session protocol, continuous learning — all in one session.

---

<p align="center">
  <strong>MIT License</strong> — Copyright (c) 2026 JM Labs (Javier Montaño)
</p>

<p align="center">
  <em>Made with Claude Code and Tons of Love with the Help of Pristino Agent</em>
</p>
