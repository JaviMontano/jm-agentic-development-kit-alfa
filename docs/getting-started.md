# Getting Started with JM-ADK

Get from zero to your first deployed project in 5 minutes.

## Prerequisites

| Tool | Version | Check |
|------|---------|-------|
| [Claude Code](https://claude.ai/claude-code) | >= 1.0.0 | `claude --version` |
| Git | any | `git --version` |
| Node.js | >= 18 | `node --version` |
| Python 3 | >= 3.10 | `python3 --version` |

## Step 1: Install the Plugin

```bash
# Clone the repository
git clone https://github.com/JaviMontano/jm-agentic-development-kit.git

# Install as a Claude Code plugin
claude plugin add ./jm-agentic-development-kit
```

Verify it loaded:

```bash
/jm-adk:menu
```

You should see the command palette with all available commands.

## Step 2: Your First Analysis

Let's analyze a project idea. Start Claude Code and type:

```bash
/jm-adk:analyze input="A task management app for small teams with real-time collaboration"
```

**What happens behind the scenes:**

1. The `adk-orchestrator` routes your request to the analysis pipeline
2. `requirements-analyst` extracts user stories and acceptance criteria
3. `domain-modeler` maps the domain (Tasks, Teams, Users, Boards)
4. `flow-mapper` traces end-to-end business flows
5. `feasibility-validator` checks technical viability against the stack
6. You receive a structured analysis document with evidence tags

**Expected output**: A discovery document covering requirements, domain model, flows, and feasibility — all tagged with `[INFERENCE]` or `[ASSUMPTION]` evidence markers.

## Step 3: Scaffold the Project

Based on the analysis, scaffold a project:

```bash
/jm-adk:scaffold-firebase
```

This generates a Firebase + Vanilla JS project structure:

```
my-project/
├── public/
│   ├── index.html          # Entry point
│   ├── css/
│   │   └── styles.css      # CSS architecture (layers, custom properties)
│   ├── js/
│   │   ├── app.js          # App initialization
│   │   ├── firebase.js     # Firebase config
│   │   └── modules/        # Feature modules
│   └── assets/
├── functions/               # Cloud Functions
│   ├── index.js
│   └── package.json
├── firestore.rules          # Security rules
├── firebase.json            # Firebase config
└── .specify/                # Governance docs
    └── CONSTITUTION.md
```

## Step 4: Build a Feature

Create a task board component:

```bash
/jm-adk:create-component name="task-board" type="interactive"
```

The `frontend-craftsman` agent will:
1. Generate semantic HTML with ARIA attributes
2. Write CSS using layers and custom properties
3. Add vanilla JS with ES modules
4. Include evidence tags in code comments

## Step 5: Deploy

```bash
/jm-adk:ship target=firebase
```

Or for Hostinger (shared hosting):

```bash
/jm-adk:ship target=hostinger
```

**Pre-deploy checks run automatically:**
- G0: Security scan (no exposed secrets)
- G2: Lighthouse audit (Performance > 90, Accessibility > 95)
- G3: Deployment compatibility check

## What's Next?

| Goal | Command | Docs |
|------|---------|------|
| Full analysis pipeline | `/jm-adk:analyze` | [Examples](examples/01-ecommerce-analysis.md) |
| Code review | `/jm-adk:review` | [Quality Gates](advanced/production-deployment.md) |
| Add authentication | `/jm-adk:create-auth-flow` | [Firebase Auth skill](../skills/firebase-auth/) |
| Custom skills | — | [Custom Skills Guide](advanced/custom-skills.md) |
| Custom agents | — | [Custom Agents Guide](advanced/custom-agents.md) |
| MCP integration | — | [MCP Integration](mcp-integration.md) |

## Common Commands Cheat Sheet

```bash
# Discovery & Analysis
/jm-adk:analyze input="..."      # Full analysis pipeline
/jm-adk:requirements             # Extract requirements only
/jm-adk:flows                    # Map business flows

# Development
/jm-adk:scaffold-firebase        # Firebase + vanilla JS
/jm-adk:scaffold-angular         # Angular 18+ + Firebase
/jm-adk:scaffold-react           # React 19+ + Firebase
/jm-adk:create-page name="..."   # New page
/jm-adk:create-component         # New component
/jm-adk:create-form              # New form with validation

# Quality
/jm-adk:review                   # Code review + quality gates
/jm-adk:audit-perf               # Lighthouse performance audit
/jm-adk:audit-a11y               # Accessibility audit

# Deploy
/jm-adk:ship target=firebase     # Deploy to Firebase Hosting
/jm-adk:ship target=hostinger    # Deploy to Hostinger
```

## Troubleshooting

### Plugin not loading

```bash
# Verify plugin.json is valid
cat jm-agentic-development-kit/.claude-plugin/plugin.json | python3 -m json.tool

# Reload plugins
/reload-plugins
```

### Commands not found

Make sure the plugin installed correctly:

```bash
/skills  # Should list jm-adk skills
```

### Skill search

Find the right skill for your task:

```bash
/jm-adk:search "firebase authentication"
```

---

*Made with Claude Code and Tons of Love with the Help of Pristino Agent*
