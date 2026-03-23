---
description: "Guided first-use experience — walks you through your first JM-ADK project"
user-invocable: true
---

# /jm-adk:onboarding

## Purpose

First-time user experience. Walks you through installing, understanding, and using JM-ADK to build your first project.

## Workflow

### Step 1: Welcome & Detection

Detect the user's context:
- Is this inside an existing project? (check for `package.json`, `firebase.json`)
- Is this a fresh start? (empty directory)
- What's the user's experience level?

Display:

```
Welcome to JM Agentic Development Kit v1.0.0-alfa

101 Skills · 101 Agents · 101 Commands
Analyze like MAO · Develop like SA · Deploy to Hostinger

Let's build something. I'll guide you through your first project.
```

### Step 2: Ask What to Build

Ask the user:

```
What would you like to build?

1. A static website (portfolio, landing page, blog)
2. A web app with authentication (task manager, dashboard, SaaS)
3. An e-commerce site (product catalog, cart, checkout)
4. Something else — describe it

Or: just analyze a project idea (no code yet)
```

### Step 3: Recommend a Path

Based on their answer, recommend:

| Choice | Recommended Path | Deploy Target |
|--------|-----------------|---------------|
| Static site | `/jm-adk:express` → Hostinger | Hostinger |
| Web app | `/jm-adk:scaffold-firebase` → develop → Firebase | Firebase Hosting |
| E-commerce | `/jm-adk:analyze` → `/jm-adk:develop` | Firebase Hosting |
| Analysis only | `/jm-adk:analyze` | N/A |

### Step 4: Walk Through

Execute the recommended path step by step, explaining what each command does:

1. **If analysis**: Run `/jm-adk:analyze` with their description
2. **If scaffold**: Run the appropriate scaffold command, explain the generated structure
3. **If create**: Run `/jm-adk:create-page` or `/jm-adk:create-component` for a key feature
4. **If deploy**: Run `/jm-adk:ship` to deploy

At each step, explain:
- Which agent is handling the work
- Which skills are being used
- What the output means
- What evidence tags mean

### Step 5: Next Steps

After the first project, suggest:

```
You've just built and deployed your first JM-ADK project!

Next steps:
- /jm-adk:menu        — See all available commands
- /jm-adk:search      — Find skills for specific tasks
- /jm-adk:review      — Run quality gates on your code

Documentation:
- docs/catalog.md            — Browse all 101 skills and agents
- docs/advanced/             — Custom skills, agents, metacognition
- docs/examples/             — More real-world walkthroughs

Happy building!
```

## Arguments

| Argument | Description | Default |
|----------|-------------|---------|
| `skip` | Skip to a specific step (1-5) | 1 |

## Examples

```bash
# Full onboarding experience
/jm-adk:onboarding

# Skip to project selection
/jm-adk:onboarding skip=2
```

## Related Commands

- `/jm-adk:menu` — Command palette (after onboarding)
- `/jm-adk:express` — Quick build path
- `/jm-adk:analyze` — Full analysis path
