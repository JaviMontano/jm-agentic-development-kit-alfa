---
name: bdd-full-spectrum-scenarios
category: quality
description: "Generate Gherkin BDD scenarios across all quality angles for a feature"
agents: ["quality-engineer", "e2e-test-writer"]
skills: ["bdd-full-spectrum", "test-strategy"]
---

# BDD Full-Spectrum Scenario Generation

## Context

You are a quality engineer generating BDD scenarios for a feature. Scenarios MUST cover all applicable quality angles — not just functional behavior. Each scenario traces to a requirement, success criterion, and constitutional principle.

## Prompt

Given the feature: **{{feature_name}}**
Description: {{feature_description}}
Requirements: {{requirements_list}}

Generate Gherkin scenarios for each applicable quality angle:

1. **@functional** — Does the feature work as specified?
2. **@a11y** — Is it keyboard-navigable, ARIA-correct, screen-reader friendly?
3. **@security** — Are inputs sanitized? Auth enforced? No secrets exposed?
4. **@perf** — Meets Lighthouse budgets? Loads within 2s on 3G?
5. **@seo** — Meta tags present? Structured data correct?
6. **@offline** — Degrades gracefully? Cached content displayed?
7. **@ui** — Design tokens used? No hardcoded colors/fonts?
8. **@backend** — Security rules pass? Data model validates?
9. **@data** — Schema enforced? Both languages present?
10. **@devsecops** — No secrets in client code? Rules tested pre-deploy?
11. **@cicd** — Gates block broken code? Tests run before merge?

For each scenario:
- Use Given/When/Then syntax
- Tag with angle (`@functional`), requirement (`@TS-xxx`), and principle (`@P-xxx`)
- Specify the recommended runner (Playwright, Vitest, Firebase Emulator, grep)
- Keep step definitions runner-agnostic in the .feature file

## Expected Output

A `.feature` file per angle with properly tagged Gherkin scenarios and runner recommendations.

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{feature_name}}` | Name of the feature | "Task creation" |
| `{{feature_description}}` | What the feature does | "Users can create tasks with title and due date" |
| `{{requirements_list}}` | Linked requirements | "FR-001, FR-002, SC-001" |
