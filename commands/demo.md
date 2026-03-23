---
description: "Quick demo — pick a project type, watch the triad build it with quality gates and evidence tags"
user-invocable: true
---

# /jm-adk:demo

## Purpose

Quick showcase of JM-ADK's capabilities. Pick a demo path, watch the triad pattern in action with quality gates, evidence tags, and Constitution-driven development. Takes 3-5 minutes. Like Scriba's demo — but for software development.

## Workflow

### Step 1: Detect Environment

Auto-detect IDE and model. Report capabilities.

### Step 2: Choose a Demo

Ask the user:

```
Pick a demo:

  1. Portfolio site     — static site, Hostinger deploy, Lighthouse 98+
  2. Task manager       — Firebase app, auth, real-time, deploy
  3. Analyze your repo  — provide a path, get a full AS-IS analysis

Which one? (1/2/3)
```

### Step 3: Execute the Demo

#### Demo 1: Portfolio Site (Express)

```
Triad: frontend-craftsman + accessibility-designer + quality-guardian

1. Scaffold vanilla HTML/CSS/JS project
2. Generate semantic HTML with ARIA, skip-link, structured data
3. Add CSS with design tokens (custom properties)
4. Quality check: Lighthouse audit, WCAG validation
5. Generate .htaccess for Hostinger deployment
6. Output: complete portfolio ready for upload

Evidence tags shown throughout. Quality gates reported.
```

#### Demo 2: Task Manager (Firebase)

```
Triad: firebase-specialist + security-architect + quality-engineer

1. Scaffold Firebase project (Firestore + Auth + Hosting)
2. Generate data model (tasks collection, security rules)
3. Add Google Auth login flow
4. Create task CRUD with real-time listeners
5. Quality check: security rules tested, Lighthouse audit
6. Deploy to Firebase Hosting
7. Output: live URL with working authentication

Evidence tags shown throughout. Quality gates reported.
```

#### Demo 3: Analyze Your Repo

```
Triad: architecture-designer + security-scanner + quality-guardian

1. Ask: "Path to your repo?"
2. Read: package.json, directory structure, key files
3. Analyze: tech stack, architecture pattern, dependencies
4. Audit: security (secrets, deps), quality (tests, docs), accessibility
5. Output: AS-IS analysis document with evidence tags

Gaps identified. Recommendations with triad assignments.
```

### Step 4: Show What Happened

After the demo, explain what the kit did:

```
What just happened:

  Triad composed:
    Lead: firebase-specialist — built the data model + auth
    Support: security-architect — reviewed rules + input handling
    Guardian: quality-engineer — validated Lighthouse, a11y, security

  Quality gates passed:
    G0: No secrets in code ✅
    G1: Requirements traced ✅
    G2: Tests written ✅
    G3: Deploy-ready ✅

  Evidence tags applied: 12 [CODE], 3 [CONFIG], 2 [INFERENCE]

  Constitution principles enforced:
    XIII (Think First) — analyzed before coding
    XIV (Simple First) — minimal dependencies
    VII (Secure by Default) — rules tested
    IX (TDD) — tests before code

Want to build something real? Run /jm-adk:init
```

## Arguments

| Argument | Description | Required | Default |
|----------|-------------|----------|---------|
| `demo` | Which demo to run (1, 2, or 3) | No | ask user |
| `repo` | Path to repo (for demo 3) | No | ask user |

## Examples

```bash
# Interactive demo selection
/jm-adk:demo

# Jump to specific demo
/jm-adk:demo demo=1

# Analyze a specific repo
/jm-adk:demo demo=3 repo=/path/to/project
```

## Related Commands

- `/jm-adk:init` — Full project initialization (after demo)
- `/jm-adk:onboarding` — Guided first-use (simpler than demo)
- `/jm-adk:analyze` — Full analysis pipeline
