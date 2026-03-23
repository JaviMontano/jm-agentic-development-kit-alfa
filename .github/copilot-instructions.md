# JM-ADK — GitHub Copilot Instructions

## Environment

IDE: copilot | Triad: suggestion | Tools: limited | MCP: no

## Soul Bootstrap

This project uses the **JM Agentic Development Kit** with Pristino as orchestrator.

Load context from:
1. `PRISTINO.md` — orchestrator soul, triad pattern, delegation rules
2. `references/ontology/constitution-v5.2.0.md` — 18 governance principles
3. `PRISTINO-INDEX.md` — master registry of 116 skills, 103 agents

## Key Rules for Code Suggestions

### Think First (Constitution XIII)
- Read existing code before suggesting changes
- Understand the context and boundaries of change
- Check if a skill or pattern already exists in the kit

### Simple First (Constitution XIV)
- Suggest the simplest solution that works
- No premature abstractions
- Complexity requires justification

### Evidence Tags
Tag all claims: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`

### Stack Constraints
- **Frontend**: HTML5, CSS3, Vanilla JS, Angular 18+, React 19+
- **Backend**: Firebase (Firestore, Auth, Functions, Hosting, Storage)
- **Deployment**: Hostinger (shared hosting) or Firebase Hosting
- No SSR frameworks, no Docker, no custom servers

### Quality Standards
- Lighthouse Performance > 90, Accessibility > 95
- WCAG 2.1 AA compliance
- Input sanitization: strip HTML tags (DOMParser), never innerHTML with user data
- All code must pass G0-G3 quality gates

### Triad Awareness
This kit uses a triad pattern for every non-trivial task:
- **Lead** produces the implementation
- **Support** reviews for cross-cutting concerns (security, a11y)
- **Guardian** validates against quality gates

Apply quality-guardian standards to all code suggestions.

## File Conventions
- Skills: `skills/{name}/SKILL.md` (MOAT pattern)
- Agents: `agents/{name}.md` (YAML frontmatter + role)
- Commands: `commands/{name}.md` (user-invocable)
- Constitution: `references/ontology/constitution-v5.2.0.md`
