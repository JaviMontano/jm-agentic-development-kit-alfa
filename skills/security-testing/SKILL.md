---
name: security-testing
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Perform security testing with OWASP checks, dependency vulnerability scanning,
  secrets detection, and security header validation.
  Trigger: "security test", "OWASP", "vulnerability scan", "secrets detection"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash
---

# Security Testing

> "Security is not a product — it's a process." — Bruce Schneier

## TL;DR

Guides security testing practices — OWASP Top 10 checks, automated dependency scanning, secrets detection in code, security header validation, and penetration testing preparation. Use when auditing application security or establishing security testing in the development pipeline.

## Procedure

### Step 1: Discover
- Run `npm audit` to identify known vulnerabilities in dependencies
- Check for hardcoded secrets, API keys, or credentials in codebase
- Review security headers on deployed application
- Identify authentication and authorization attack surfaces

### Step 2: Analyze
- Map OWASP Top 10 risks to the application's architecture
- Categorize vulnerabilities by severity (critical, high, medium, low)
- Evaluate XSS vectors (user input rendering, innerHTML usage)
- Check CSRF protection on state-changing endpoints

### Step 3: Execute
- Set up `npm audit` or Snyk in CI pipeline for dependency scanning
- Install pre-commit hooks for secrets detection (gitleaks, detect-secrets)
- Add security headers: CSP, HSTS, X-Content-Type-Options, X-Frame-Options
- Implement input sanitization and output encoding for XSS prevention
- Configure CORS properly (not `Access-Control-Allow-Origin: *` in production)
- Review Firebase security rules with the rules simulator
- Set up Dependabot or Renovate for automated dependency updates

### Step 4: Validate
- CI blocks deployment on critical/high vulnerability findings
- No secrets detected in repository history (use git-secrets or truffleHog)
- Security headers score A+ on securityheaders.com
- XSS payloads tested and blocked on all user input fields

## Quality Criteria

- [ ] Dependency vulnerability scanning runs on every CI build
- [ ] No hardcoded secrets in codebase (pre-commit hooks enforce)
- [ ] Security headers configured and validated
- [ ] Input validation and output encoding prevent XSS
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- Running security scans only before release (should be continuous)
- Ignoring `npm audit` warnings because "they're dev dependencies"
- Using `dangerouslySetInnerHTML` or `innerHTML` with user-provided content

## Related Skills

- `firestore-security-rules` — Firestore rules are a key security layer
- `code-review` — security review should be part of every PR review
