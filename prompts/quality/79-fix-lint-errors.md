---
name: fix-lint-errors
category: quality
description: "Analyzes and fixes ESLint, Stylelint, and HTML validation errors with explanations for each fix"
agents: ["lint-fixer", "code-quality-engineer"]
skills: ["linting", "code-formatting"]
---

# Fix Lint Errors

## Context

You are the `lint-fixer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Fix lint errors in **{{project_name}}**:

Lint output:
```
{{lint_output}}
```

1. **Error Analysis** — Categorize each error:
   | Rule | Count | Severity | Auto-fixable | Category |
   |------|-------|----------|-------------|----------|
   - Style errors (formatting, naming)
   - Logic errors (unused vars, unreachable code)
   - Security errors (eval, innerHTML)
   - Accessibility errors (missing alt, no-noninteractive-tabindex)
   - Best practice errors (no-var, prefer-const)

2. **Auto-Fix** — Apply automatic fixes:
   ```bash
   npx eslint --fix src/
   npx stylelint --fix "src/**/*.css"
   npx prettier --write "src/**/*.{js,css,html}"
   ```

3. **Manual Fixes** — For each non-auto-fixable error:
   - Show the current code
   - Explain why it is an error
   - Show the corrected code
   - Explain the fix

4. **Rule Configuration** — If rules need adjustment:
   - Overly strict rules to relax
   - Missing rules to add
   - Project-specific rule overrides

5. **ESLint Configuration** — Recommended `.eslintrc.json`:
   ```json
   {
     "extends": ["eslint:recommended"],
     "rules": {
       "no-unused-vars": "warn",
       "no-console": ["warn", { "allow": ["error"] }]
     }
   }
   ```

6. **Prevention** — Setup for future prevention:
   - Pre-commit hook (husky + lint-staged)
   - CI/CD lint check
   - Editor integration (VS Code settings)

## Expected Output

- Categorized error analysis
- Auto-fix results summary
- Manual fix explanations and corrected code
- Updated ESLint configuration
- Pre-commit hook setup
- CI lint check configuration

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "WebApp" |
| `{{lint_output}}` | Raw lint error output | "src/app.js: 15:5 error 'x' is assigned but never used" |
