---
name: write-e2e-tests
category: quality
description: "Generates end-to-end tests using Playwright or Cypress covering critical user flows with Firebase Emulator integration"
agents: ["e2e-test-engineer", "qa-engineer"]
skills: ["e2e-testing", "playwright-tests"]
---

# Write E2E Tests

## Context

You are the `e2e-test-engineer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Write E2E tests for **{{project_name}}** using **{{e2e_framework}}**:

Critical flows to test:
```
{{critical_flows}}
```

1. **Test Infrastructure** — Setup:
   - Firebase Emulator Suite integration
   - Test user seeding (create test accounts)
   - Test data seeding (populate Firestore)
   - Cleanup after each test

2. **Test Structure** — For each flow:
   ```javascript
   // Playwright example
   import { test, expect } from '@playwright/test';

   test.describe('{{flow_name}}', () => {
     test.beforeEach(async ({ page }) => {
       // Seed data, login if needed
     });

     test('should complete {{flow_name}} successfully', async ({ page }) => {
       await page.goto('/{{path}}');
       // Step-by-step interaction
       await expect(page.locator('[data-testid="success"]')).toBeVisible();
     });
   });
   ```

3. **Flows to Cover**:
   - Authentication (register, login, logout, password reset)
   - Core CRUD operations (create, read, update, delete)
   - Navigation (all routes accessible, guards work)
   - Form submission (validation, success, error)
   - Error scenarios (network failure, unauthorized)

4. **Assertions** — Verify:
   - Page content and elements visible
   - URL changes after navigation
   - Firestore data created/updated (via Admin SDK)
   - Toast/notification messages
   - Accessibility (no axe violations)

5. **Visual Regression** — Screenshot comparison:
   - Key pages captured
   - Responsive breakpoints tested
   - Dark mode captured

6. **Performance Assertions** — During E2E:
   - Page load time < threshold
   - No console errors
   - No failed network requests

7. **CI Configuration** — GitHub Actions workflow for E2E.

## Expected Output

- E2E test files for each critical flow
- Test utility functions (login, seed data)
- Firebase Emulator configuration
- Playwright/Cypress configuration
- GitHub Actions CI workflow
- Test data fixtures

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "EcommerceApp" |
| `{{e2e_framework}}` | E2E framework | "playwright" |
| `{{critical_flows}}` | Flows to test | "Registration, Login, Add to Cart, Checkout" |
