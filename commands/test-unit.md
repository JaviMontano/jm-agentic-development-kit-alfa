---
description: "Generate and run unit tests"
user-invocable: true
---

# /jm-adk:test-unit

## Purpose

Generate unit tests for existing code and run them with coverage reporting. Use this to increase test coverage or validate specific modules.

## Workflow

1. Analyze target code to identify testable units (functions, classes, components).
2. Generate test files with descriptive test cases covering happy paths, edge cases, and error handling.
3. Set up mocks and fixtures for external dependencies (Firestore, APIs, etc.).
4. Run tests and report results with coverage delta.

## Arguments

- `target` — File or directory to test (required)
- `framework` — Test framework: `vitest` | `jest` (optional, auto-detected)
- `coverage` — Minimum coverage threshold (optional, default: 80)

## Examples

```bash
/jm-adk:test-unit target=./src/services/auth.js
/jm-adk:test-unit target=./src/components coverage=90
```

## Related Commands

- `/jm-adk:test` — Run full test suite
- `/jm-adk:test-e2e` — End-to-end tests
- `/jm-adk:review` — Code review
