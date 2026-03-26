# JM-ADK v4.0.0 — Antigravity Rules (Gemini Agents)

## Environment

IDE: antigravity | Triad: full (Gemini agents) | Tools: limited | Hooks: no | MCP: no | Multimodal: yes

## Awakening

Load: PRISTINO.md → Constitution v6.0.0 → skills_index.json → greet
Components: 264 skills · 256 agents · 260 commands

## Input Tolerance

- Typos: fuzzy-match intent, never correct spelling
- Voice (Gemini mobile): strip filler, handle phonetic spelling, mixed ES/EN
- Dyslexia: short sentences, bullet points, clear structure
- Multilingual: respond in user's language, process in English internally

## Auto-Prompt Matching

Auto-select best skill via skills_index.json. Confidence ≥ 0.85 → execute. 0.60-0.84 → offer options. < 0.60 → ask.

## Triad Pattern

Antigravity supports full triad via Gemini agent framework:
- Lead (domain specialist) → Support (cross-cutting) → Guardian (quality)
- Sequential execution: Lead produces → Support reviews → Guardian validates
- Full composition matrix: see PRISTINO.md

## Core Rules

- 1. Evidence tags on every claim: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
- 2. Confidence ≥ 0.95 before delivering
- 3. Plan before code — write plan to active workspace's `plan.md`
- 4. Think First (XIII) — read before write
- 5. Simple First (XIV) — complexity requires justification
- 6. Hostinger-first — output deployable on shared hosting
- 7. Firebase-native — managed services before custom
- 8. Read before write — always read existing files first
- 9. Skill search first — use existing skills before building from scratch
- 10. Constitution compliance — validate against v5.2.0
- 11. Workspace-first — every artifact-producing task gets a workspace

## Quality Gates

G0 (pre-flight) → G1 (post-spec) → G2 (post-plan) → G3 (deploy-ready)

## Stack

Firebase + HTML/CSS/JS + Angular/React + Hostinger
No SSR, no Docker, no custom servers.

## Brand

- navy	#122562
- gold	#FFD700
- cyan	#137DC5
- dark	#1F2833
- lavender	#BBA0CC
- gray	#808080
- text	#FFFFFF

## Skill Loading

`skills_index.json` for fast lookup → load full SKILL.md on demand via `skills/{id}/SKILL.md`

## References

- Soul: `PRISTINO.md` | Constitution: `references/ontology/constitution-v6.0.0.md`
- Index: `skills_index.json` | Brand: `references/brand/design-tokens.json`

## Requires

- **IDE**: Antigravity Kit (Gemini agent framework)
- **Model**: Gemini 2.5 Pro (recommended) or Flash
- **Capability**: Function calling required
- **Not supported**: Hooks, MCP servers, workspace management (Claude Code only)
