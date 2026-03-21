---
name: audit-security
category: quality
description: "Performs a security audit covering Firebase rules, XSS, CSRF, auth vulnerabilities, and dependency scanning"
agents: ["security-auditor", "pentest-analyst"]
skills: ["security-audit", "vulnerability-assessment"]
---

# Audit Security

## Context

You are the `security-auditor` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Perform a security audit for **{{project_name}}**:

1. **Firestore Security Rules Audit**:
   ```
   {{firestore_rules}}
   ```
   - Check for open read/write rules
   - Validate authentication checks
   - Validate data validation in rules
   - Check for over-permissive queries
   - Test with Firebase Rules Playground

2. **Authentication Security**:
   - Password policy strength
   - Brute force protection
   - Session management (token expiry, refresh)
   - Account enumeration prevention
   - MFA availability
   - OAuth redirect validation

3. **Frontend Security**:
   - XSS (Cross-Site Scripting) vectors
   - innerHTML usage audit
   - Content Security Policy headers
   - User input sanitization
   - DOM-based XSS risks

4. **API Security** — Cloud Functions:
   - Input validation on all endpoints
   - Authorization checks
   - Rate limiting
   - CORS configuration
   - Error message information leakage

5. **Dependency Audit**:
   ```bash
   npm audit
   ```
   - Known vulnerabilities in dependencies
   - Outdated packages
   - Supply chain risk assessment

6. **Data Security**:
   - Sensitive data in localStorage/sessionStorage
   - API keys in client code (Firebase keys are OK but review others)
   - Secrets in source code
   - Encryption at rest (Firestore default)
   - Encryption in transit (HTTPS enforcement)

7. **Security Headers** — Check HTTP headers:
   - X-Content-Type-Options
   - X-Frame-Options
   - Content-Security-Policy
   - Strict-Transport-Security
   - Referrer-Policy

8. **Vulnerability Report** — For each finding:
   | ID | Vulnerability | Severity | CVSS | Fix | Status |
   |----|-------------|----------|------|-----|--------|

## Expected Output

- Firestore rules analysis
- Authentication security report
- Frontend vulnerability scan results
- Dependency audit results
- Security headers check
- Prioritized vulnerability report
- Remediation code examples

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "FinanceApp" |
| `{{firestore_rules}}` | Current Firestore rules | "rules_version = '2'; …" |
