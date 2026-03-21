---
description: "Code review with quality gates G0 through G3"
---

# /review

## Purpose
Perform a comprehensive code review applying JM-ADK quality gates (G0-G3), checking security, evidence discipline, performance, accessibility, and deployment readiness.

## Workflow

### Phase 1: Security Scan (G0)
**Agent**: `quality-guardian`
**Skills**: `security-testing`, `security-architecture`, `firestore-security-rules`

1. Scan for exposed secrets, API keys, tokens, and credentials
2. Check Firebase security rules for open read/write permissions
3. Identify XSS vectors (innerHTML, eval, unsanitized input)
4. Verify CSRF protections on form submissions
5. Check Content Security Policy headers
6. Validate dependency versions for known vulnerabilities

### Gate: G0 — Security
- [ ] No exposed secrets or API keys in source
- [ ] Firebase security rules are restrictive (no open `allow read, write: if true`)
- [ ] No XSS vectors in DOM manipulation code
- [ ] Dependencies have no critical CVEs
- [ ] CSP headers configured

### Phase 2: Evidence & Architecture Review (G1)
**Agent**: `quality-guardian`, `architecture-designer`
**Skills**: `code-review`, `component-architecture`, `domain-driven-design`

1. Verify evidence tags on all claims and decisions `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
2. Check component boundaries and separation of concerns
3. Validate naming conventions (files, functions, variables, CSS classes)
4. Review error handling patterns (try/catch, error boundaries, user feedback)
5. Check for code duplication and refactoring opportunities
6. Verify documentation completeness (JSDoc, inline comments, ADRs)

### Gate: G1 — Evidence & Architecture
- [ ] Evidence tags present on architectural decisions
- [ ] Component boundaries are clean (no circular dependencies)
- [ ] Naming conventions are consistent
- [ ] Error handling is comprehensive
- [ ] No significant code duplication

### Phase 3: Performance & Accessibility Review (G2)
**Agent**: `performance-optimizer`, `quality-engineer`
**Skills**: `performance-testing`, `accessibility-testing`, `image-optimization`, `font-optimization`

1. Run Lighthouse audit (Performance, Accessibility, Best Practices, SEO)
2. Check image optimization (format, size, lazy loading, srcset)
3. Verify font loading strategy (preload, subset, fallback)
4. Review JavaScript bundle size and code splitting
5. Validate WCAG 2.1 AA compliance (contrast, keyboard nav, ARIA, focus management)
6. Check Core Web Vitals (LCP, FID, CLS)

### Gate: G2 — Performance & Accessibility
- [ ] Lighthouse Performance > 90
- [ ] Lighthouse Accessibility > 95
- [ ] Lighthouse Best Practices > 90
- [ ] Lighthouse SEO > 90
- [ ] Images optimized with lazy loading
- [ ] WCAG 2.1 AA compliant

### Phase 4: Deployment Readiness Review (G3)
**Agent**: `deployment-specialist`
**Skills**: `deployment-checklist`, `hostinger-deployment`, `firebase-deployment`

1. Verify production build succeeds with zero errors
2. Check Hostinger compatibility (no SSR, no Docker, no server-side runtime)
3. Validate .htaccess configuration (if Hostinger target)
4. Confirm Firebase configuration is production-ready
5. Check environment variable management (no dev values in prod config)
6. Review error pages (404, 500) and fallback behavior

### Gate: G3 — Deployment Readiness
- [ ] Production build succeeds
- [ ] Compatible with target hosting (Hostinger or Firebase Hosting)
- [ ] Environment variables properly configured
- [ ] Error pages functional
- [ ] No development artifacts in production build

## Output
- Security Scan Report (G0 findings and fixes)
- Architecture Review (G1 findings, refactoring suggestions)
- Performance & Accessibility Report (G2 scores, optimization recommendations)
- Deployment Readiness Report (G3 checklist status)
- Overall Review Verdict: PASS / PASS WITH NOTES / FAIL
