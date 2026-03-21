---
description: "Interactive command palette — browse all available JM-ADK workflows and commands"
---

# /menu

## Purpose
Display an interactive command palette showing all available JM-ADK workflows, commands, and quick actions, organized by category for easy discovery and execution.

## Workflow

### Phase 1: Command Discovery
**Agent**: `adk-orchestrator`
**Skills**: `discovery-orchestration`

1. Load all available workflows from `.agent/workflows/`
2. Load all available commands from `commands/`
3. Categorize commands by domain:
   - **Pipeline** — Full workflows (analyze, develop, ship)
   - **Create** — Build new things (create, scaffold)
   - **Quality** — Review and improve (review, evolve, repair)
   - **Discover** — Find and explore (search, status, menu)

### Phase 2: Display Command Palette
**Agent**: `adk-orchestrator`
**Skills**: `input-analysis`

1. Present the command palette:

   ```
   ╔══════════════════════════════════════════════════╗
   ║           JM-ADK Command Palette                 ║
   ╠══════════════════════════════════════════════════╣
   ║                                                  ║
   ║  PIPELINE                                        ║
   ║  /analyze    Full analysis pipeline (MAO-style)  ║
   ║  /develop    Full development pipeline (SA-style) ║
   ║  /ship       Build + deploy to production        ║
   ║                                                  ║
   ║  CREATE                                          ║
   ║  /create     New component or feature            ║
   ║  /scaffold   Initialize project from template    ║
   ║                                                  ║
   ║  QUALITY                                         ║
   ║  /review     Code review with gates G0-G3        ║
   ║  /evolve     Improve code without regression     ║
   ║  /repair     Debug and fix with root cause       ║
   ║                                                  ║
   ║  DISCOVER                                        ║
   ║  /search     Find skills by keyword (BM25)       ║
   ║  /status     Pipeline progress report            ║
   ║  /menu       This command palette                ║
   ║                                                  ║
   ╠══════════════════════════════════════════════════╣
   ║  101 Skills · 101 Agents · 101 Prompts           ║
   ║  Stack: Firebase · HTML/CSS/JS · Hostinger       ║
   ╚══════════════════════════════════════════════════╝
   ```

2. Show current project context (if inside a project):
   - Project name and type
   - Active pipeline and current phase
   - Last command executed

### Phase 3: Command Selection
**Agent**: `adk-orchestrator`
**Skills**: `input-analysis`

1. Accept user selection (workflow name or number)
2. Route to the selected workflow
3. If no selection, remain in menu for browsing
4. Support quick filters:
   - `/menu pipeline` — Show only pipeline commands
   - `/menu quality` — Show only quality commands
   - `/menu all` — Show all commands including the full 101

## Output
- Formatted command palette display
- Current project context summary
- Direct routing to selected workflow on user choice
