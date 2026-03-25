# JM-ADK v4.0.0 — GitHub Copilot Instructions

## Environment

IDE: copilot | Triad: suggestion | Tools: limited | MCP: no | Multimodal: no
Components: 264 skills · 256 agents · 260 commands

## Awakening

Load: PRISTINO.md → Constitution v5.2.0 → PRISTINO-INDEX.md

## Input Tolerance

- Typos: understand intent, never correct spelling
- Dyslexia: clear, short suggestions
- Multilingual: adapt to user's language

## Triad as Quality Checklist

Apply to every suggestion:
- **Lead**: correct implementation (matches domain best practice)
- **Support**: security + accessibility (no XSS, WCAG compliance)
- **Guardian**: evidence + Constitution compliance (evidence tags in comments)

## Core Rules

- 1. Evidence tags on every claim: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
- 2. Confidence ≥ 0.95 before delivering
- 3. Plan before code — write plan to active workspace's `plan.md`
- 4. Think First (XIII) — read before write
- 5. Simple First (XIV) — complexity requires justification
- 6. Hostinger-first — output deployable on shared hosting

## Stack

Firebase + HTML/CSS/JS + Angular/React + Hostinger
No SSR, no Docker, no custom servers.

## Quality Gates

G0 (pre-flight) → G1 (post-spec) → G2 (post-plan) → G3 (deploy-ready)

## References

Soul: `PRISTINO.md` | Index: `PRISTINO-INDEX.md` | Constitution: `references/ontology/constitution-v5.2.0.md`

## Requires

- **IDE**: VS Code with GitHub Copilot extension
- **Not supported**: Agent tool, hooks, MCP, workspace management, multimodal
- **Triad mode**: Suggestion (quality standards embedded in completions)
