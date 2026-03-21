---
name: pre-deploy-checklist
category: deployment
description: "Generates a comprehensive pre-deployment checklist covering code, security, performance, SEO, and operations"
agents: ["release-manager", "qa-lead"]
skills: ["release-management", "deployment-readiness"]
---

# Pre-Deploy Checklist

## Context

You are the `release-manager` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Generate a pre-deployment checklist for **{{project_name}}** version **{{version}}**:

1. **Code Quality**:
   - [ ] All lint errors resolved (`npm run lint`)
   - [ ] No console.log statements in production code
   - [ ] No debugger statements
   - [ ] No TODO/FIXME comments for this release
   - [ ] Code reviewed and approved
   - [ ] All merge conflicts resolved
   - [ ] Feature branch merged to main

2. **Testing**:
   - [ ] Unit tests passing (`npm test`)
   - [ ] E2E tests passing
   - [ ] Manual testing on staging complete
   - [ ] Cross-browser testing done (Chrome, Firefox, Safari, Edge)
   - [ ] Mobile testing done (iOS Safari, Android Chrome)
   - [ ] Responsive design verified at all breakpoints

3. **Security**:
   - [ ] Firestore security rules reviewed and updated
   - [ ] Storage security rules reviewed
   - [ ] No API keys/secrets in client code
   - [ ] Dependencies audited (`npm audit`)
   - [ ] CORS properly configured
   - [ ] CSP headers set

4. **Performance**:
   - [ ] Lighthouse score > 90 (all categories)
   - [ ] Bundle size within budget
   - [ ] Images optimized
   - [ ] Lazy loading implemented
   - [ ] No memory leaks

5. **SEO** (if public-facing):
   - [ ] Meta tags on all pages
   - [ ] Structured data valid
   - [ ] sitemap.xml updated
   - [ ] robots.txt correct
   - [ ] Canonical URLs set

6. **Accessibility**:
   - [ ] axe-core audit clean
   - [ ] Keyboard navigation tested
   - [ ] Screen reader tested
   - [ ] Color contrast verified

7. **Firebase**:
   - [ ] Firestore indexes deployed
   - [ ] Cloud Functions tested on staging
   - [ ] Firebase environment config set
   - [ ] Billing alerts configured
   - [ ] Backup scheduled

8. **Operations**:
   - [ ] Monitoring configured
   - [ ] Error tracking active
   - [ ] Rollback plan documented
   - [ ] Release notes written
   - [ ] Stakeholders notified
   - [ ] Deployment window confirmed

9. **Post-Deploy Verification**:
   - [ ] Site loads on production URL
   - [ ] SSL certificate valid
   - [ ] Auth flows working
   - [ ] Data reads/writes working
   - [ ] Email notifications sending
   - [ ] Analytics tracking

## Expected Output

- Complete pre-deploy checklist (markdown with checkboxes)
- Go/No-Go decision template
- Post-deploy smoke test script
- Stakeholder notification template
- Release notes template

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "ProductionApp" |
| `{{version}}` | Version being deployed | "1.0.0" |
| `{{deploy_date}}` | Planned deployment date | "2026-04-15" |
