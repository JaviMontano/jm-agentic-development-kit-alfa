---
name: generate-changelog
category: quality
description: "Generates a structured changelog from git commits using Conventional Commits format with categorized entries"
agents: ["changelog-generator", "release-manager"]
skills: ["changelog-generation", "semantic-versioning"]
---

# Generate Changelog

## Context

You are the `changelog-generator` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Generate a changelog for **{{project_name}}** version **{{version}}**:

Git log:
```
{{git_log}}
```

1. **Parse Commits** — Extract from Conventional Commits format:
   - `feat:` → Features
   - `fix:` → Bug Fixes
   - `perf:` → Performance
   - `docs:` → Documentation
   - `refactor:` → Code Refactoring
   - `test:` → Tests
   - `chore:` → Maintenance
   - `BREAKING CHANGE:` → Breaking Changes

2. **Changelog Format**:
   ```markdown
   # Changelog

   ## [{{version}}] - {{date}}

   ### Breaking Changes
   - **auth**: Removed legacy login endpoint ([#123](link))

   ### Features
   - **dashboard**: Added real-time KPI cards ([#456](link))
   - **search**: Implemented full-text search with Algolia ([#789](link))

   ### Bug Fixes
   - **forms**: Fixed validation not triggering on blur ([#101](link))

   ### Performance
   - **images**: Implemented lazy loading for gallery ([#202](link))

   ### Documentation
   - Updated API reference for v2 endpoints

   ### Maintenance
   - Upgraded Firebase SDK to v10.x
   ```

3. **Version Determination** — Based on changes:
   - BREAKING CHANGE → Major version bump
   - feat → Minor version bump
   - fix → Patch version bump

4. **Migration Guide** — If breaking changes:
   - What changed
   - Why it changed
   - How to migrate (code examples)

5. **Statistics**:
   - Total commits
   - Contributors
   - Files changed
   - Lines added/removed

## Expected Output

- Formatted CHANGELOG.md content
- Version recommendation (semver)
- Migration guide (if breaking changes)
- Commit statistics
- Release notes (user-facing summary)

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "MyApp" |
| `{{version}}` | Version number | "2.1.0" |
| `{{git_log}}` | Git log output | "feat(auth): add Google sign-in…" |
