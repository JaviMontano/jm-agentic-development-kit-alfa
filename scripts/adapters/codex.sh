#!/bin/bash
# codex.sh — Adapter: Core → OpenAI Codex (AGENTS.md) + Gemini (GEMINI.md)
#
# Both use sequential-prompts mode: no Agent tool, triad applied in single response.
# Gemini adds voice + multimodal support. Codex is text-only.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
source "$SCRIPT_DIR/acl.sh"

VERSION=$(acl_version)
SKILLS_COUNT=$(acl_count_skills)
AGENTS_COUNT=$(acl_count_agents)
COMMANDS_COUNT=$(acl_count_commands)
CONSTITUTION=$(acl_constitution_version)

echo "Adapter: Core → Codex + Gemini"

# ── AGENTS.md (OpenAI Codex CLI) ──

cat > "$PROJECT_ROOT/AGENTS.md" << AGENTS
# JM-ADK v$VERSION — Codex Agent Instructions

## Environment

IDE: codex | Triad: sequential-prompts | Tools: Bash/Read/Write | MCP: no | Multimodal: no
Components: $SKILLS_COUNT skills · $AGENTS_COUNT agents · $COMMANDS_COUNT commands

## Awakening

Read: PRISTINO.md → Constitution $CONSTITUTION → PRISTINO-INDEX.md → greet

## Input Tolerance

- Typos: fuzzy-match, never correct
- Multilingual: respond in user's language
- Voice: handle phonetic spelling if transcribed

## Auto-Prompt Matching

Auto-select skill for intent. No Agent tool: apply all 3 triad perspectives in single response.

## Core Rules

$(acl_core_rules | head -6 | sed 's/^/- /')

## Quality Gates

$(acl_quality_gates)

## References

Soul: PRISTINO.md | Index: PRISTINO-INDEX.md | Constitution: references/ontology/constitution-$CONSTITUTION.md

## Requires

- **IDE**: OpenAI Codex CLI
- **Not supported**: Agent tool, hooks, MCP, workspace management, multimodal
AGENTS

echo "  Generated: AGENTS.md"

# ── GEMINI.md (Gemini Code Assist — not Antigravity) ──

cat > "$PROJECT_ROOT/GEMINI.md" << GEMINI
# JM-ADK v$VERSION — Gemini Agent Instructions

## Environment

IDE: gemini | Triad: sequential-prompts | Tools: limited | Hooks: no | MCP: no | Multimodal: yes (mobile)
Components: $SKILLS_COUNT skills · $AGENTS_COUNT agents · $COMMANDS_COUNT commands

## Awakening

On session start: load PRISTINO.md → Constitution $CONSTITUTION → PRISTINO-INDEX.md → greet user.

## Input Tolerance

- Typos: fuzzy-match intent, never correct spelling
- Voice (Gemini mobile): strip filler, handle phonetic spelling, mixed ES/EN
- Dyslexia: short sentences, bullet points, clear structure
- Multilingual: respond in user's language, process in English internally

## Auto-Prompt Matching

Auto-select best skill. Confidence ≥ 0.85 → execute. 0.60-0.84 → offer options. < 0.60 → ask.
No Agent tool: apply triad perspectives sequentially in single response.

## Triad Pattern

Lead (domain) → Support (cross-cutting) → Guardian (quality). Sequential in single response.
Full matrix: \`PRISTINO.md\`

## Request Classification

| Type | Action |
|------|--------|
| QUESTION | Direct answer |
| ANALYSIS | Discovery triad → report |
| SIMPLE CODE | Inline edit |
| COMPLEX CODE | Plan first |
| DESIGN/UI | Tokens + plan + triad |
| SCAFFOLD | Template + customize |
| DEPLOY | Build → validate → deploy |

## Core Rules

$(acl_core_rules | head -6 | sed 's/^/- /')

## Quality Gates

$(acl_quality_gates)

## References

- Soul: \`PRISTINO.md\` | Constitution: \`references/ontology/constitution-$CONSTITUTION.md\`
- Index: \`PRISTINO-INDEX.md\` | Brand: \`references/brand/design-tokens.json\`

## Requires

- **IDE**: Gemini Code Assist (not Antigravity — for Antigravity use .agent/rules/GEMINI.md)
- **Not supported**: Agent tool, hooks, MCP, workspace management
- **Supported**: Multimodal (mobile), voice input
GEMINI

echo "  Generated: GEMINI.md"
echo "ADAPTER-COMPLETE: codex+gemini"
