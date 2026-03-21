---
name: intelligent-routing
description: "Automatic agent and skill selection based on user request analysis. Use when: routing, which agent, find skill, search capability, match request."
version: "1.0.0"
author: "JM Labs"
allowed-tools:
  - Read
  - Glob
  - Grep
---

# Intelligent Routing

Automatically analyze every user request and route to the correct agent + skills combination.

## When to Use This Skill

- Every single user request (runs silently before other skills)
- When the user asks "which agent/skill should I use?"
- When the request spans multiple domains

## Routing Matrix

| Keywords | Domain | Primary Agent | Skills |
|----------|--------|---------------|--------|
| requirements, user story, acceptance criteria | Discovery | `requirements-analyst` | requirements-engineering |
| stakeholder, RACI, influence | Discovery | `stakeholder-mapper` | stakeholder-mapping |
| DDD, bounded context, aggregate | Discovery | `domain-modeler` | domain-driven-design |
| flow, process, diagram | Discovery | `flow-mapper` | flow-mapping |
| scenario, compare, evaluate | Discovery | `scenario-evaluator` | scenario-analysis |
| feasibility, viable, possible | Discovery | `feasibility-validator` | feasibility-validation |
| competitor, market, build vs buy | Discovery | `competitive-analyst` | competitive-intelligence |
| persona, user journey, empathy | Discovery | `user-researcher` | user-research |
| cost, estimate, effort, budget | Discovery | `cost-estimator` | cost-estimation |
| risk, mitigation, contingency | Discovery | `risk-analyst` | risk-assessment |
| pitch, executive, ROI, business case | Discovery | `pitch-crafter` | executive-pitch |
| architecture, C4, ADR, system design | Architecture | `architecture-designer` | system-architecture |
| API, REST, GraphQL, endpoint, OpenAPI | Architecture | `api-designer` | api-design |
| database, schema, collection, Firestore model | Architecture | `database-architect` | database-design |
| security, threat, OWASP, auth flow | Architecture | `security-architect` | security-architecture |
| state, Redux, NgRx, Zustand, store | Architecture | `state-designer` | state-management |
| component, module, interface contract | Architecture | `component-designer` | component-architecture |
| responsive, breakpoint, mobile, viewport | Architecture | `responsive-designer` | responsive-design |
| accessibility, WCAG, ARIA, a11y | Architecture | `accessibility-designer` | accessibility-design |
| design system, token, CSS variable | Architecture | `design-system-architect` | design-system |
| PWA, service worker, offline, manifest | Architecture | `pwa-architect` | pwa-architecture |
| performance, Core Web Vitals, LCP, CLS | Architecture | `performance-architect` | performance-architecture |
| SEO, structured data, sitemap, robots | Architecture | `seo-architect` | seo-architecture |
| cache, CDN, service worker cache | Architecture | `caching-strategist` | caching-strategy |
| HTML, page, semantic, markup | Frontend | `frontend-craftsman` | html-semantic |
| CSS, style, Tailwind, layout, grid | Frontend | `css-architect` | css-architecture |
| vanilla JS, DOM, event, fetch | Frontend | `vanilla-js-specialist` | vanilla-javascript |
| Angular, Signal, component, NgModule | Frontend | `angular-specialist` | angular-development |
| React, hook, JSX, component, useState | Frontend | `react-specialist` | react-development |
| TypeScript, type, interface, generic | Frontend | `typescript-specialist` | typescript-patterns |
| animation, transition, GSAP, motion | Frontend | `animation-specialist` | css-animation |
| form, validation, input, submit | Frontend | `form-specialist` | form-engineering |
| chart, graph, D3, visualization | Frontend | `chart-specialist` | data-visualization |
| map, Google Maps, marker, geocode | Frontend | `map-specialist` | google-maps-integration |
| i18n, translate, locale, RTL | Frontend | `i18n-specialist` | internationalization |
| email template, HTML email | Frontend | `email-template-builder` | email-templates |
| landing page, hero, CTA, conversion | Frontend | `landing-page-builder` | landing-pages |
| dashboard, admin, data table | Frontend | `dashboard-builder` | admin-dashboards |
| ecommerce, cart, checkout, product | Frontend | `ecommerce-builder` | ecommerce-frontend |
| blog, CMS, markdown, post | Frontend | `blog-builder` | blog-cms |
| portfolio, gallery, case study | Frontend | `portfolio-builder` | portfolio-sites |
| web component, custom element, shadow DOM | Frontend | `web-component-builder` | web-components |
| dark mode, theme, color scheme | Frontend | `css-architect` | dark-mode |
| Firebase, Firestore, project setup | Backend | `firebase-specialist` | firebase-setup |
| collection, document, subcollection | Backend | `firestore-expert` | firestore-modeling |
| query, index, where, orderBy | Backend | `firestore-expert` | firestore-queries |
| security rules, allow, match | Backend | `firestore-expert` | firestore-security-rules |
| auth, login, register, password, Google sign-in | Backend | `firebase-auth-expert` | firebase-auth |
| upload, storage, file, image | Backend | `firebase-storage-expert` | firebase-storage |
| Cloud Function, trigger, onCall, onRequest | Backend | `cloud-functions-dev` | cloud-functions |
| hosting, deploy, Firebase Hosting | Backend | `firebase-hosting-expert` | firebase-hosting |
| Sheets API, Drive API, Calendar API | Backend | `google-apis-specialist` | google-workspace-apis |
| Analytics, GA4, event tracking, GTM | Backend | `google-apis-specialist` | google-analytics |
| reCAPTCHA, bot, App Check | Backend | `google-apis-specialist` | recaptcha-integration |
| Express, middleware, REST API, endpoint | Backend | `rest-api-builder` | rest-api-development |
| webhook, callback, event, payload | Backend | `webhook-specialist` | webhook-handling |
| email, SendGrid, Mailgun, send | Backend | `email-service-specialist` | email-sending |
| Stripe, PayPal, payment, checkout | Backend | `payment-specialist` | payment-integration |
| notification, push, FCM | Backend | `push-notification-specialist` | push-notifications |
| cron, schedule, batch, periodic | Backend | `cron-job-specialist` | scheduled-functions |
| test, unit test, Jest, Vitest | Quality | `unit-test-writer` | unit-testing |
| e2e, Playwright, Cypress, end-to-end | Quality | `e2e-test-writer` | e2e-testing |
| Lighthouse, performance audit | Quality | `performance-tester` | performance-testing |
| accessibility audit, axe, screen reader | Quality | `accessibility-auditor` | accessibility-testing |
| security audit, CVE, dependency scan | Quality | `security-scanner` | security-testing |
| code review, PR review, best practice | Quality | `code-reviewer` | code-review |
| lint, ESLint, Prettier, format | Quality | `linter-configurator` | linting-formatting |
| bundle, webpack, tree-shake, chunk | Quality | `bundle-analyzer` | build-optimization |
| deploy, Hostinger, FTP, cPanel | Operations | `hostinger-expert` | hostinger-deployment |
| deploy, Firebase, firebase deploy | Operations | `firebase-deployer` | firebase-deployment |
| CI/CD, GitHub Actions, pipeline | Operations | `ci-cd-configurator` | github-actions-ci |
| domain, DNS, nameserver, SSL | Operations | `domain-dns-specialist` | domain-management |
| documentation, README, ADR, docs | Documentation | `technical-writer` | mermaid-diagramming |
| diagram, Mermaid, flowchart, sequence | Documentation | `diagram-specialist` | mermaid-diagramming |

## Complexity Assessment

- **SIMPLE** (1 domain) → Single agent, inline response
- **MODERATE** (2 domains) → Primary + secondary agent
- **COMPLEX** (3+ domains) → Orchestrator with plan file

## Routing Protocol

1. Read user request carefully
2. Extract keywords and match against routing matrix
3. Determine complexity level
4. If SIMPLE: activate single agent directly
5. If MODERATE: activate primary, note secondary for follow-up
6. If COMPLEX: create plan file, activate orchestrator
7. Announce which agent is being activated

## Skill Search Integration

For requests that don't match the routing matrix:
```bash
python .agent/scripts/search_skills.py "user query terms"
```

This runs BM25 ranking over all 101 skills to find the best match.
