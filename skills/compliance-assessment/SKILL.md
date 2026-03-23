---
name: compliance-assessment
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Evaluates projects against regulatory and legal frameworks including GDPR,
  accessibility standards (WCAG), data protection laws, and industry-specific
  compliance requirements. Produces compliance checklists and gap analyses.
  Trigger: "GDPR", "compliance", "accessibility audit", "data protection", "legal review"
allowed-tools:
  - Read
  - Write
  - Glob
  - Grep
  - Bash
---

# Compliance Assessment

> "Compliance is not just about following rules — it's about building trust." — Unknown

## TL;DR

Evaluates software projects against regulatory frameworks (GDPR, CCPA, HIPAA), accessibility standards (WCAG 2.1), and data protection requirements to identify compliance gaps and remediation paths. Use this skill before launch, during audits, or when entering regulated markets.

## Procedure

### Step 1: Discover
- Identify applicable regulations based on geography, industry, and data types
- Inventory data collected, processed, and stored by the application
- Review existing privacy policies, cookie consents, and data processing agreements
- Audit current accessibility implementation against WCAG 2.1 AA

### Step 2: Analyze
- Map data flows against GDPR/CCPA requirements: consent, purpose limitation, data minimization
- Assess data subject rights implementation: access, deletion, portability, rectification
- Evaluate accessibility compliance: automated scan + manual testing checklist
- Identify gaps between current state and required compliance level

### Step 3: Execute
- Produce a compliance gap analysis with severity ratings (critical/high/medium/low)
- Create a remediation roadmap with effort estimates and priority order
- Document data processing inventory: what data, why, how long, who accesses
- Generate compliance checklists for ongoing development (Definition of Done additions)

### Step 4: Validate
- Verify gap analysis covers all applicable regulations
- Confirm remediation items have owners and timelines
- Check that compliance requirements are embedded in development workflow
- Validate with legal counsel for interpretation of regulatory requirements

## Quality Criteria

- [ ] All applicable regulations identified and mapped to requirements
- [ ] Data processing inventory is complete and current
- [ ] Gap analysis includes severity and remediation effort estimates
- [ ] Accessibility audit covers both automated and manual testing
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- Checkbox compliance without understanding the spirit of regulations
- Treating accessibility as a one-time fix instead of ongoing requirement
- Assuming GDPR compliance only applies to EU-based companies

## Related Skills

- `security-architecture` — technical security controls supporting compliance
- `accessibility-design` — detailed WCAG implementation patterns
- `data-strategy` — data governance supporting compliance requirements
