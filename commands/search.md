---
description: "Search skills by keyword using BM25 index"
user-invocable: true
---

# /jm-adk:search

## Purpose

Search across all available ADK skills, commands, and agents by keyword. Use this to find the right tool for a specific task when browsing the menu is too broad.

## Workflow

1. Parse search query and tokenize into weighted terms.
2. Run BM25 ranking against the skill/command index including descriptions and tags.
3. Return top matches with relevance scores, descriptions, and usage examples.
4. Offer to execute the top-ranked command if the user confirms.

## Arguments

- `query` — Search keywords (required)
- `limit` — Maximum results to return (optional, default: 10)

## Examples

```bash
/jm-adk:search query="authentication firebase"
/jm-adk:search query="performance optimization" limit=5
```

## Related Commands

- `/jm-adk:menu` — Browse all commands by category
- `/jm-adk:help` — Getting started guide
