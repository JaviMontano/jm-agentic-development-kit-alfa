---
description: "Generate and run e2e tests"
user-invocable: true
---

# /jm-adk:test-e2e

## Purpose

Generate end-to-end tests that simulate real user interactions and run them against the application. Use this to validate complete user workflows.

## Workflow

1. Identify critical user journeys from requirements or existing user flows.
2. Generate e2e test scripts using Playwright or Cypress with page object pattern.
3. Set up test fixtures, authentication helpers, and database seeding.
4. Run e2e tests and generate a report with screenshots for failures.

## Arguments

- `flows` — User flows to test: comma-separated (optional, e.g., "login,checkout,profile")
- `framework` — E2E framework: `playwright` | `cypress` (optional, default: playwright)
- `headed` — Run with visible browser (optional, default: false)

## Examples

```bash
/jm-adk:test-e2e
/jm-adk:test-e2e flows="login,registration,checkout" headed=true
```

## Related Commands

- `/jm-adk:test` — Run full test suite
- `/jm-adk:test-unit` — Unit tests
- `/jm-adk:test-a11y` — Accessibility tests
