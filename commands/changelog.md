---
description: "Generate changelog from git history"
user-invocable: true
---

# /jm-adk:changelog

## Purpose

Generate a formatted changelog from git commit history following the Keep a Changelog convention. Use this to document what changed between releases.

## Workflow

1. Parse git log for commits since the last tag or specified date range.
2. Categorize commits into Added, Changed, Deprecated, Removed, Fixed, Security.
3. Group by version/release with dates and contributor attribution.
4. Generate a formatted CHANGELOG.md following Keep a Changelog convention.

## Arguments

- `from` — Starting reference: tag, commit, or date (optional, default: last tag)
- `to` — Ending reference (optional, default: HEAD)
- `version` — Version label for this release (optional)

## Examples

```bash
/jm-adk:changelog
/jm-adk:changelog from=v1.0.0 version=v1.1.0
```

## Related Commands

- `/jm-adk:docs` — Full project documentation
- `/jm-adk:readme` — Update README
- `/jm-adk:deploy` — Deploy after changelog update
