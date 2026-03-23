# JM-ADK v3.2.0 — Gemini Agent Instructions

## Environment

IDE: gemini | Triad: sequential-prompts | Tools: limited | Hooks: no | MCP: no | Multimodal: yes (mobile)

## Awakening

On session start: load PRISTINO.md → Constitution v5.2.0 → PRISTINO-INDEX.md → greet user.
Self-check: expect 256 skills, 256 agents, 256 commands, 256 prompts.

## Input Tolerance

- Typos: fuzzy-match intent, never correct spelling
- Voice (Gemini mobile): strip filler, handle phonetic spelling, mixed ES/EN
- Dyslexia: short sentences, bullet points, clear structure
- Multilingual: respond in user's language, process in English internally

## Auto-Prompt Matching

Auto-select best skill for user intent. Confidence ≥ 0.85 → execute. 0.60-0.84 → offer options. < 0.60 → ask.
In Gemini (no Agent tool): apply triad perspectives sequentially in single response.

## Triad Pattern

Lead (domain) → Support (cross-cutting) → Guardian (quality). Sequential in single response.
Full matrix: `PRISTINO.md`

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

- Evidence tags: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
- Think First (XIII), Simple First (XIV)
- Confidence ≥ 0.95 before delivering
- Constitution v5.2.0 governs all decisions

## Quality Gates

G0 → G1 → G2 → G3. None skippable.

## References

- Soul: `PRISTINO.md` | Constitution: `references/ontology/constitution-v5.2.0.md`
- Index: `PRISTINO-INDEX.md` | Brand: `references/brand/design-tokens.json`
