---
description: "Sync IDE instruction files from canonical core — Antigravity, VS Code Copilot, Cursor, Windsurf, Codex, Gemini"
user-invocable: true
---

# /jm-adk:adapt

## Purpose

Regenerate all IDE-specific instruction files from the canonical core (SKILL.md format). Uses the Adapter Pattern with an Anti-Corruption Layer: core files are read-only, IDE files are derived views.

Run after: adding skills, updating CLAUDE.md, bumping version, or changing Constitution.

## Architecture

```
Core (source of truth)              IDE outputs (derived, regenerated)
─────────────────────               ────────────────────────────────
skills/*.md                    ┐
CLAUDE.md                      ├── ACL ──→ Antigravity (.agent/skills_index.json, .agent/rules/GEMINI.md)
PRISTINO.md                    │          VS Code (.github/copilot-instructions.md)
references/ontology/*          │          Cursor (.cursorrules)
references/brand/*             │          Windsurf (.windsurfrules)
.claude-plugin/plugin.json     ┘          Codex (AGENTS.md)
                                          Gemini (GEMINI.md)
```

## Usage

```bash
# All adapters (recommended after any core change)
bash scripts/adapt.sh all

# Specific adapter only
bash scripts/adapt.sh antigravity
bash scripts/adapt.sh vscode
bash scripts/adapt.sh cursor
bash scripts/adapt.sh codex
```

Or via the model:

```
/jm-adk:adapt
/jm-adk:adapt target=antigravity
```

## IDE Capability Matrix

| IDE | Instruction File | Triad Mode | Agent Tool | Hooks | MCP | Workspace |
|-----|-----------------|-----------|------------|-------|-----|-----------|
| **Claude Code** | `CLAUDE.md` | Full (parallel subagents) | Yes | Yes | Yes | Yes |
| **Antigravity** | `.agent/rules/GEMINI.md` | Full (Gemini agents) | Yes | No | No | No |
| **Gemini** | `GEMINI.md` | Sequential prompts | No | No | No | No |
| **Cursor** | `.cursorrules` | Checklist inline | No | No | Yes | No |
| **Windsurf** | `.windsurfrules` | Checklist inline | No | No | No | No |
| **VS Code Copilot** | `.github/copilot-instructions.md` | Suggestion | No | No | No | No |
| **Codex** | `AGENTS.md` | Sequential prompts | No | No | No | No |

## What Requires Which IDE

| Feature | Claude Code | Antigravity | Others |
|---------|:-----------:|:-----------:|:------:|
| Full triad (3 subagents) | Yes | Yes | No (checklist fallback) |
| Workspace management | Yes | No | No |
| Hooks (auto-tasklog, session-init) | Yes | No | No |
| MCP servers | Yes | No | Cursor only |
| Auto-prompt matching | Yes | Yes | Simplified |
| Quality gates G0-G3 | Yes | Yes | Checklist |
| Evidence tags | Yes | Yes | Yes |
| Multimodal (images, PDFs) | Yes | Yes | Cursor (images) |
| Voice input | Mobile only | Mobile only | No |

## Adapter Files

| File | Role |
|------|------|
| `scripts/adapters/acl.sh` | Anti-Corruption Layer — reads core, exposes clean API |
| `scripts/adapters/antigravity.sh` | Core → .agent/ (index + rules + symlink) |
| `scripts/adapters/vscode.sh` | Core → .github/copilot-instructions.md |
| `scripts/adapters/cursor.sh` | Core → .cursorrules + .windsurfrules |
| `scripts/adapters/codex.sh` | Core → AGENTS.md + GEMINI.md |
| `scripts/adapt.sh` | Master orchestrator (runs one or all) |

## Related Commands

- `/jm-adk:init` — First-time setup (includes adapt)
- `/jm-adk:health` — System integrity check
