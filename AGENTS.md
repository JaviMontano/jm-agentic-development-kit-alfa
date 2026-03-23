# JM-ADK — Codex Agent Instructions

## Environment

IDE: codex | Triad: sequential-prompts | Tools: Bash/Read/Write | MCP: no

## Soul Bootstrap

Read in order:
1. `PRISTINO.md` — orchestrator soul, triad pattern, delegation rules
2. `references/ontology/constitution-v5.2.0.md` — 18 governance principles
3. `PRISTINO-INDEX.md` — master registry (117 skills, 103 agents, 106 commands)

## Identity

- **Kit**: JM Agentic Development Kit v1.4.0
- **Orchestrator**: Pristino (triad-first routing)
- **Brand**: MetodologIA / JM Labs
- **Stack**: Firebase + HTML/CSS/JS + Angular/React + Hostinger

## Triad Pattern

Every non-trivial task uses 3 perspectives sequentially:
1. **Lead**: domain specialist produces the deliverable
2. **Support**: cross-cutting review (security, accessibility, performance)
3. **Guardian**: quality validation against Constitution and quality gates

In Codex (no Agent tool): apply all 3 perspectives in a single response.

## Core Rules

1. Think First (XIII) — read existing code before modifying
2. Simple First (XIV) — simplest solution that works
3. Evidence tags: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
4. Plan before code — plan file required for complex changes
5. Tests before production code (IX)
6. Input sanitization: strip HTML (DOMParser), never innerHTML with user data

## Stack Constraints

- Frontend: HTML5, CSS3, Vanilla JS, Angular 18+, React 19+
- Backend: Firebase (Firestore, Auth, Functions, Hosting, Storage)
- Deploy: Hostinger (shared) or Firebase Hosting
- No SSR, no Docker, no custom servers

## Quality Gates

G0 (secrets scan) → G1 (spec complete) → G2 (architecture + tests) → G3 (deploy-ready)

## Constitution

Full governance: `references/ontology/constitution-v5.2.0.md` (18 principles)
