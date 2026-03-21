---
name: review-code
category: quality
description: "Performs a comprehensive code review checking code quality, patterns, security, performance, and best practices"
agents: ["code-reviewer", "senior-developer"]
skills: ["code-review", "best-practices"]
---

# Review Code

## Context

You are the `code-reviewer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Review the following code for **{{project_name}}**:

```{{language}}
{{code}}
```

Review across these dimensions:

1. **Correctness** — Does it work?
   - Logic errors
   - Off-by-one errors
   - Race conditions
   - Null/undefined handling
   - Error handling completeness

2. **Security** — Is it safe?
   - XSS vulnerabilities (innerHTML, eval)
   - SQL/NoSQL injection
   - Sensitive data exposure
   - Auth/authz bypass
   - Input validation

3. **Performance** — Is it efficient?
   - Unnecessary re-renders (React) or change detection (Angular)
   - Memory leaks (listeners not removed)
   - N+1 Firestore queries
   - Unbounded data fetching
   - Missing debounce/throttle

4. **Maintainability** — Is it clean?
   - Naming conventions (clear, consistent)
   - Function length (< 30 lines recommended)
   - Single Responsibility Principle
   - DRY violations
   - Code comments (where needed)

5. **Firebase Best Practices**:
   - Modular SDK imports
   - Listener cleanup
   - Transaction usage for multi-doc writes
   - Security rules alignment
   - Error handling for Firebase operations

6. **Accessibility** — If UI code:
   - Semantic HTML
   - ARIA attributes
   - Keyboard support
   - Screen reader experience

7. **Review Summary**:
   | Category | Grade | Issues |
   |----------|-------|--------|
   - Must Fix (blocking)
   - Should Fix (important)
   - Nice to Fix (suggestions)
   - Praise (what's done well)

## Expected Output

- Line-by-line review comments
- Issue severity classification
- Corrected code examples for each issue
- Review summary table
- Overall assessment

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "MyApp" |
| `{{code}}` | Code to review | "function handleSubmit() {…}" |
| `{{language}}` | Programming language | "javascript" |
