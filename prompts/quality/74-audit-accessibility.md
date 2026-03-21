---
name: audit-accessibility
category: quality
description: "Performs a WCAG 2.1 accessibility audit with automated and manual checks, producing a remediation plan"
agents: ["a11y-auditor", "quality-analyst"]
skills: ["accessibility-audit", "wcag-testing"]
---

# Audit Accessibility

## Context

You are the `a11y-auditor` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Perform an accessibility audit of **{{project_name}}** against **{{wcag_level}}**:

Pages to audit:
```
{{pages}}
```

1. **Automated Testing** — Run axe-core / Lighthouse accessibility:
   - List all violations with WCAG criteria reference
   - Severity: Critical, Serious, Moderate, Minor
   - Affected elements (CSS selectors)

2. **Manual Checks** — Per WCAG principle:

   **Perceivable**:
   - [ ] All images have alt text
   - [ ] Color contrast meets minimums (4.5:1 text, 3:1 large)
   - [ ] Content readable without CSS
   - [ ] Text resizable to 200% without loss
   - [ ] No info conveyed by color alone

   **Operable**:
   - [ ] All functionality keyboard accessible
   - [ ] No keyboard traps
   - [ ] Focus order logical
   - [ ] Focus indicators visible
   - [ ] Skip navigation link present
   - [ ] No content flashes more than 3 times/sec

   **Understandable**:
   - [ ] Language declared (`<html lang>`)
   - [ ] Form labels present and associated
   - [ ] Error messages descriptive and linked
   - [ ] Navigation consistent across pages

   **Robust**:
   - [ ] Valid HTML
   - [ ] ARIA used correctly
   - [ ] Custom widgets have proper roles
   - [ ] Works with screen readers

3. **Screen Reader Testing** — Test with:
   - VoiceOver (Mac/iOS)
   - Reading order logical
   - All interactive elements announced correctly
   - Dynamic content updates announced

4. **Keyboard Testing** — Full keyboard walkthrough:
   - Tab order document
   - Trapped focus areas
   - Missing keyboard access

5. **Remediation Plan** — For each issue:
   | ID | Issue | WCAG | Severity | Fix | Effort |
   |----|-------|------|----------|-----|--------|

## Expected Output

- Accessibility audit report with all findings
- WCAG compliance checklist (pass/fail per criterion)
- Screen reader testing results
- Keyboard navigation map
- Prioritized remediation plan
- Code fix examples for top issues

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "PublicPortal" |
| `{{wcag_level}}` | Target WCAG level | "WCAG 2.1 AA" |
| `{{pages}}` | Pages to audit | "Home, Login, Dashboard, Settings" |
