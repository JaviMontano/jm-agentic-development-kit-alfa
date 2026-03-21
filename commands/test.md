---
description: "Run test suite"
user-invocable: true
---

# /jm-adk:test

## Purpose

Run the project test suite including unit, integration, and end-to-end tests with coverage reporting. Use this to validate code correctness before deployment.

## Workflow

1. Detect test framework and configuration (Jest, Vitest, Cypress, Playwright).
2. Run unit tests with coverage collection and threshold validation.
3. Run integration and e2e tests if available and configured.
4. Generate a test report with pass/fail summary, coverage metrics, and failing test details.

## Arguments

- `type` — Test type: `unit` | `e2e` | `all` (optional, default: all)
- `coverage` — Generate coverage report (optional, default: true)
- `watch` — Run in watch mode (optional, default: false)

## Examples

```bash
/jm-adk:test
/jm-adk:test type=unit coverage=true
/jm-adk:test type=e2e watch=true
```

## Related Commands

- `/jm-adk:test-unit` — Generate and run unit tests
- `/jm-adk:test-e2e` — Generate and run e2e tests
- `/jm-adk:review` — Code review before testing
