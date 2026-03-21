---
description: "Interactive command palette showing all available commands"
user-invocable: true
---

# /jm-adk:menu

## Purpose

Display an interactive, categorized command palette so users can discover and launch any available ADK command. Use this when you need to explore capabilities or are unsure which command to run.

## Workflow

1. Load the command index from `commands/` directory and parse all frontmatter descriptions.
2. Group commands by category (Pipeline, Discovery, Architecture, Scaffold, Create, Evolve, Review, Test, Deploy, Docs, Meta).
3. Present a numbered, searchable palette with category headers and brief descriptions.
4. Accept user selection and delegate execution to the chosen command.

## Arguments

- `category` — Filter palette to a specific category (optional)
- `search` — Filter commands by keyword match (optional)

## Examples

```bash
/jm-adk:menu
/jm-adk:menu category=discovery
/jm-adk:menu search=firebase
```

## Related Commands

- `/jm-adk:help` — Detailed help and getting started guide
- `/jm-adk:search` — Search skills by keyword using BM25 index
