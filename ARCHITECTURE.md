# JM-ADK Architecture

> 101 Skills · 101 Agents · 101 Prompts — From Analysis to Deployment

## Directory Structure

```
jm-agentic-development-kit/
├── .claude-plugin/plugin.json     # Plugin manifest
├── agents/                        # 101 specialist agents
├── commands/                      # 101 user-invocable commands
├── skills/                        # 101 skill modules (MOAT structure)
│   └── {skill}/
│       ├── SKILL.md               # Definition + procedure
│       ├── prompts/               # Skill-specific prompts
│       └── examples/              # Sample outputs
├── prompts/                       # 101 reusable prompt templates
│   └── .catalog/                  # Prompt index and search data
├── references/
│   ├── ontology/                  # Governance documents
│   └── priming-rag/               # Knowledge files
├── templates/                     # Project scaffolding templates
│   ├── firebase/                  # Firebase + vanilla JS
│   ├── angular/                   # Angular 18+ + Firebase
│   ├── react/                     # React 19+ + Firebase
│   ├── vanilla-js/                # Pure HTML/CSS/JS
│   └── node-api/                  # Cloud Functions API
├── .shared/
│   └── skill-search/              # BM25 skill search engine
│       ├── data/skills.csv        # Skills catalog (searchable)
│       └── scripts/search.py      # Search CLI
├── scripts/                       # Automation scripts
├── hooks/hooks.json               # Session automation
├── CLAUDE.md                      # AI instructions
├── ARCHITECTURE.md                # This file
├── settings.json                  # Default agent config
└── README.md                      # User documentation
```

---

## 101 Agents

### Orchestration (5)
| # | Agent | Description |
|---|-------|-------------|
| 1 | `adk-orchestrator` | Master orchestrator — routes requests, manages pipeline, activates specialists |
| 2 | `pipeline-conductor` | Sequences analysis→development phases, enforces gates |
| 3 | `skill-router` | Intelligent skill matching — keyword matrix + BM25 search |
| 4 | `quality-guardian` | Validates deliverables against quality gates G0-G3 |
| 5 | `context-manager` | Token budget optimization, progressive disclosure, RAG priming |

### Discovery & Analysis — MAO DNA (20)
| # | Agent | Description |
|---|-------|-------------|
| 6 | `requirements-analyst` | User stories, acceptance criteria, business rules extraction |
| 7 | `stakeholder-mapper` | Influence/interest matrix, RACI, communication plan |
| 8 | `domain-modeler` | DDD bounded contexts, aggregates, domain events |
| 9 | `flow-mapper` | Business process flows, data flows, integration diagrams |
| 10 | `scenario-evaluator` | Tree-of-Thought scenario analysis with weighted scoring |
| 11 | `feasibility-validator` | Technical feasibility across 7 dimensions |
| 12 | `competitive-analyst` | Market analysis, technology differentiation, build-vs-buy |
| 13 | `user-researcher` | Persona development, user journey mapping, empathy maps |
| 14 | `business-analyst` | Process modeling, capability mapping, gap analysis |
| 15 | `product-strategist` | Roadmap prioritization, value stream, product-market fit |
| 16 | `cost-estimator` | Effort inductors, scope drivers, magnitude estimation |
| 17 | `risk-analyst` | Risk register, mitigation plans, contingency protocols |
| 18 | `change-catalyst` | Adoption strategy, training roadmap, resistance management |
| 19 | `compliance-checker` | GDPR, accessibility, data protection assessment |
| 20 | `industry-expert` | Context-adaptive SME lens based on client sector |
| 21 | `input-amplifier` | Interprets vague/ambiguous input, clarifies intent |
| 22 | `discovery-reporter` | Executive findings, technical reports, business reviews |
| 23 | `workshop-facilitator` | Event storming, impact mapping, design sprints |
| 24 | `data-strategist` | Data architecture, governance, quality, pipeline design |
| 25 | `pitch-crafter` | C-level executive pitch with financial modeling |

### Architecture & Design — SA DNA (20)
| # | Agent | Description |
|---|-------|-------------|
| 26 | `architecture-designer` | System design, C4 diagrams, ADRs, quality attributes |
| 27 | `solutions-architect` | End-to-end integration, cross-cutting concerns |
| 28 | `api-designer` | REST/GraphQL API contracts, versioning, rate limiting |
| 29 | `database-architect` | Schema design, indexing, Firestore data modeling |
| 30 | `security-architect` | Threat modeling, auth flows, OWASP, zero-trust |
| 31 | `event-designer` | Event-driven patterns, pub/sub, Cloud Functions triggers |
| 32 | `state-designer` | Frontend/backend state patterns, reactivity models |
| 33 | `component-designer` | Module boundaries, interface contracts, component API |
| 34 | `data-modeler` | Entity relationships, normalization, Firestore collections |
| 35 | `infrastructure-planner` | Hosting topology, CDN, DNS, SSL, load balancing |
| 36 | `migration-planner` | Strangler fig, data migration, re-platforming |
| 37 | `caching-strategist` | Cache patterns, CDN config, service worker caching |
| 38 | `auth-architect` | Firebase Auth, OAuth2, OIDC, RBAC, custom claims |
| 39 | `realtime-designer` | Firestore listeners, RTDB, WebSockets, SSE |
| 40 | `pwa-architect` | Service workers, manifest, offline-first, Web Push |
| 41 | `responsive-designer` | Breakpoints, container queries, fluid typography |
| 42 | `accessibility-designer` | WCAG 2.1 AA patterns, ARIA, keyboard navigation |
| 43 | `design-system-architect` | Design tokens, component library, CSS architecture |
| 44 | `performance-architect` | Core Web Vitals strategy, bundle optimization, lazy loading |
| 45 | `seo-architect` | Technical SEO, structured data, Open Graph, sitemaps |

### Frontend Development (20)
| # | Agent | Description |
|---|-------|-------------|
| 46 | `frontend-craftsman` | HTML5 semantic markup, CSS3, vanilla JS — the baseline |
| 47 | `angular-specialist` | Angular 18+ Signals, standalone components, SSR, Nx |
| 48 | `react-specialist` | React 19+ Server Components, Suspense, hooks, RSC |
| 49 | `vanilla-js-specialist` | Pure DOM manipulation, Web APIs, ES modules, no framework |
| 50 | `css-architect` | Tailwind v4, CSS Layers, @scope, container queries |
| 51 | `html-specialist` | Semantic HTML5, forms, tables, multimedia, SEO markup |
| 52 | `typescript-specialist` | TypeScript 5+, branded types, conditional types, DX |
| 53 | `animation-specialist` | CSS animations, GSAP, Framer Motion, View Transitions |
| 54 | `form-specialist` | Form validation, multi-step forms, file uploads, UX |
| 55 | `chart-specialist` | Chart.js, D3.js, data visualization, dashboard components |
| 56 | `map-specialist` | Google Maps API, Leaflet, geolocation, location services |
| 57 | `i18n-specialist` | Internationalization, l10n, RTL, Angular i18n, react-intl |
| 58 | `a11y-implementer` | WCAG implementation, screen reader testing, ARIA patterns |
| 59 | `email-template-builder` | HTML email templates, responsive email, email services |
| 60 | `landing-page-builder` | Conversion-optimized landing pages, A/B testing |
| 61 | `dashboard-builder` | Admin dashboards, data tables, filters, real-time updates |
| 62 | `ecommerce-builder` | Product catalogs, carts, checkout, Stripe/PayPal integration |
| 63 | `blog-builder` | CMS-like features, markdown rendering, SEO-optimized |
| 64 | `portfolio-builder` | Personal/agency portfolios, case studies, galleries |
| 65 | `web-component-builder` | Custom elements, Shadow DOM, slots, cross-framework |

### Backend & Firebase (15)
| # | Agent | Description |
|---|-------|-------------|
| 66 | `firebase-specialist` | Firestore, Auth, Functions, Hosting, Storage, Extensions |
| 67 | `node-specialist` | Node.js runtime, streams, workers, ESM, performance |
| 68 | `cloud-functions-dev` | Cloud Functions v2, triggers, scheduling, pub/sub |
| 69 | `firestore-expert` | Data modeling, queries, indexes, security rules, offline |
| 70 | `firebase-auth-expert` | Auth providers, custom claims, session management |
| 71 | `firebase-storage-expert` | File uploads, image processing, CDN, security rules |
| 72 | `firebase-hosting-expert` | Hosting config, rewrites, headers, preview channels |
| 73 | `google-apis-specialist` | Workspace APIs, Maps, Analytics, reCAPTCHA, Translate |
| 74 | `rest-api-builder` | Express/Fastify APIs on Cloud Functions |
| 75 | `webhook-specialist` | Incoming/outgoing webhooks, event processing, retries |
| 76 | `email-service-specialist` | SendGrid, Mailgun, Nodemailer via Cloud Functions |
| 77 | `payment-specialist` | Stripe, PayPal, MercadoPago integration on Firebase |
| 78 | `push-notification-specialist` | FCM, Web Push, notification strategies |
| 79 | `cron-job-specialist` | Cloud Scheduler, scheduled functions, batch processing |
| 80 | `firebase-emulator-expert` | Local development with emulator suite, testing |

### Quality & Testing (12)
| # | Agent | Description |
|---|-------|-------------|
| 81 | `quality-engineer` | Test strategy, pyramid, automation architecture |
| 82 | `unit-test-writer` | Jest, Vitest, Jasmine, Karma — unit test generation |
| 83 | `e2e-test-writer` | Playwright, Cypress, Puppeteer — end-to-end testing |
| 84 | `performance-tester` | Lighthouse CI, Web Vitals, load testing, profiling |
| 85 | `accessibility-auditor` | WCAG 2.1 auditing, axe-core, screen reader testing |
| 86 | `security-scanner` | OWASP checks, dependency CVEs, secrets detection |
| 87 | `code-reviewer` | PR review, anti-patterns, best practices enforcement |
| 88 | `linter-configurator` | ESLint, Prettier, Stylelint, Angular lint, config |
| 89 | `bundle-analyzer` | Webpack/Vite bundle analysis, tree-shaking, code splitting |
| 90 | `seo-auditor` | Technical SEO audit, structured data validation |
| 91 | `cross-browser-tester` | Browser compatibility, polyfills, progressive enhancement |
| 92 | `mobile-responsiveness-tester` | Device testing, viewport, touch, PWA validation |

### Deployment & Operations (5)
| # | Agent | Description |
|---|-------|-------------|
| 93 | `deployment-specialist` | Build → deploy pipeline for Hostinger + Firebase |
| 94 | `hostinger-expert` | cPanel, FTP/SFTP, .htaccess, PHP config, DNS, SSL |
| 95 | `firebase-deployer` | firebase deploy, preview channels, rollback |
| 96 | `domain-dns-specialist` | Domain registration, DNS records, SSL certificates |
| 97 | `ci-cd-configurator` | GitHub Actions for build + deploy to Hostinger/Firebase |

### Documentation & Communication (4)
| # | Agent | Description |
|---|-------|-------------|
| 98 | `technical-writer` | READMEs, API docs, ADRs, runbooks, changelogs |
| 99 | `diagram-specialist` | Mermaid diagrams — C4, sequence, flow, ER, state |
| 100 | `copywriter` | Value propositions, landing copy, microcopy, CTAs |
| 101 | `evidence-auditor` | Classifies claims, flags assumptions, prevents hallucination |

---

## 101 Skills

### Discovery & Analysis (20)
| # | Skill | Description |
|---|-------|-------------|
| 1 | `requirements-engineering` | User stories, acceptance criteria, Given/When/Then |
| 2 | `stakeholder-mapping` | Influence matrix, RACI, communication plan |
| 3 | `domain-driven-design` | Bounded contexts, aggregates, domain events, ubiquitous language |
| 4 | `flow-mapping` | Business processes, data flows, integration diagrams |
| 5 | `scenario-analysis` | Tree-of-Thought evaluation, weighted scoring |
| 6 | `feasibility-validation` | 7-dimension technical feasibility assessment |
| 7 | `competitive-intelligence` | Market research, technology landscape, build-vs-buy |
| 8 | `user-research` | Personas, empathy maps, user journeys, interviews |
| 9 | `business-process-modeling` | BPMN, value streams, capability mapping |
| 10 | `product-roadmapping` | Prioritization, value stream mapping, backlog strategy |
| 11 | `cost-estimation` | Effort inductors, T-shirt sizing, Monte Carlo |
| 12 | `risk-assessment` | Risk register, probability/impact matrix, mitigations |
| 13 | `change-readiness` | ADKAR adoption model, resistance mapping, interventions |
| 14 | `compliance-assessment` | GDPR, accessibility, data protection, legal review |
| 15 | `input-analysis` | Typo correction, intent disambiguation, amplification |
| 16 | `workshop-design` | Event storming, impact mapping, design sprints |
| 17 | `executive-pitch` | C-level business case, ROI, cost-of-inaction |
| 18 | `data-strategy` | Data architecture, governance, quality, pipelines |
| 19 | `discovery-orchestration` | Pipeline sequencing, gate enforcement, deliverable tracking |
| 20 | `sector-intelligence` | Industry-specific context, regulatory landscape |

### Architecture & Design (20)
| # | Skill | Description |
|---|-------|-------------|
| 21 | `system-architecture` | C4 diagrams, ADRs, quality attributes, trade-offs |
| 22 | `api-design` | REST/GraphQL contracts, OpenAPI, versioning, pagination |
| 23 | `database-design` | Schema patterns, indexing, Firestore data modeling |
| 24 | `security-architecture` | Threat modeling, STRIDE, auth flows, encryption |
| 25 | `event-architecture` | Pub/sub, Cloud Functions triggers, event sourcing |
| 26 | `state-management` | Redux, NgRx, Zustand, Context API, Firestore sync |
| 27 | `component-architecture` | Module boundaries, interface contracts, composition |
| 28 | `responsive-design` | Breakpoints, fluid typography, container queries |
| 29 | `accessibility-design` | WCAG 2.1 AA patterns, inclusive design, ARIA |
| 30 | `design-system` | Design tokens, CSS variables, component library |
| 31 | `pwa-architecture` | Service workers, manifest, offline-first, Web Push |
| 32 | `performance-architecture` | Core Web Vitals strategy, lazy loading, code splitting |
| 33 | `seo-architecture` | Technical SEO, structured data, sitemaps, robots.txt |
| 34 | `caching-strategy` | Browser cache, CDN, service worker, Firestore offline |
| 35 | `auth-architecture` | Firebase Auth, OAuth2, RBAC, custom claims, sessions |
| 36 | `realtime-architecture` | Firestore listeners, RTDB, WebSockets, SSE |
| 37 | `migration-planning` | Strangler fig, data migration, rollback strategies |
| 38 | `infrastructure-design` | Hosting topology, CDN, DNS, SSL, load balancing |
| 39 | `mermaid-diagramming` | C4, sequence, flow, ER, state, Gantt diagrams |
| 40 | `trade-off-analysis` | Weighted scoring, decision matrices, ATAM |

### Frontend Development (25)
| # | Skill | Description |
|---|-------|-------------|
| 41 | `html-semantic` | HTML5 elements, forms, tables, multimedia, SEO |
| 42 | `css-architecture` | CSS Layers, @scope, custom properties, Tailwind v4 |
| 43 | `vanilla-javascript` | DOM manipulation, events, fetch API, ES modules |
| 44 | `angular-development` | Signals, standalone, SSR, routing, forms, RxJS |
| 45 | `react-development` | Hooks, Server Components, Suspense, Context, RSC |
| 46 | `typescript-patterns` | Branded types, generics, utility types, strict mode |
| 47 | `css-animation` | Keyframes, transitions, GSAP, View Transitions API |
| 48 | `form-engineering` | Validation, multi-step, file upload, error handling |
| 49 | `data-visualization` | Chart.js, D3.js, SVG, Canvas, dashboard components |
| 50 | `google-maps-integration` | Maps API, markers, geocoding, Places, Directions |
| 51 | `internationalization` | i18n, l10n, RTL, date/number formatting |
| 52 | `web-components` | Custom elements, Shadow DOM, slots, Lit |
| 53 | `email-templates` | HTML email, responsive tables, MJML, inline CSS |
| 54 | `landing-pages` | Hero sections, CTAs, social proof, A/B testing |
| 55 | `admin-dashboards` | Data tables, filters, charts, CRUD, real-time |
| 56 | `ecommerce-frontend` | Product listings, cart, checkout, payment UI |
| 57 | `blog-cms` | Markdown rendering, categories, search, SEO |
| 58 | `portfolio-sites` | Galleries, case studies, animations, contact forms |
| 59 | `image-optimization` | WebP, AVIF, srcset, lazy loading, CDN |
| 60 | `font-optimization` | Font loading strategies, subsetting, variable fonts |
| 61 | `scroll-interaction` | Intersection Observer, scroll-driven animations |
| 62 | `modal-dialog-patterns` | Dialog element, focus trap, keyboard, a11y |
| 63 | `navigation-patterns` | Responsive nav, mega menus, breadcrumbs, tabs |
| 64 | `dark-mode` | prefers-color-scheme, CSS variables, toggle, persistence |
| 65 | `print-stylesheet` | @media print, PDF-friendly layouts, page breaks |

### Backend & Firebase (20)
| # | Skill | Description |
|---|-------|-------------|
| 66 | `firebase-setup` | Project init, emulators, config, environments |
| 67 | `firestore-modeling` | Collections, subcollections, denormalization, refs |
| 68 | `firestore-queries` | Compound queries, indexes, pagination, aggregation |
| 69 | `firestore-security-rules` | Auth-based rules, custom claims, rate limiting |
| 70 | `firebase-auth` | Email/password, Google, GitHub, phone, anonymous |
| 71 | `firebase-storage` | Upload/download, image resize, security rules |
| 72 | `cloud-functions` | HTTP, Firestore, Auth, Storage, PubSub triggers |
| 73 | `firebase-hosting` | Deploy, rewrites, headers, preview channels |
| 74 | `google-workspace-apis` | Sheets, Docs, Drive, Calendar, Gmail APIs |
| 75 | `google-analytics` | GA4, events, conversions, GTM integration |
| 76 | `recaptcha-integration` | reCAPTCHA v3, App Check, bot protection |
| 77 | `rest-api-development` | Express on Cloud Functions, middleware, validation |
| 78 | `webhook-handling` | Stripe, GitHub, custom webhooks, verification |
| 79 | `email-sending` | SendGrid, Mailgun, templates, transactional email |
| 80 | `payment-integration` | Stripe Checkout, PayPal, subscription billing |
| 81 | `push-notifications` | FCM, Web Push API, notification strategies |
| 82 | `scheduled-functions` | Cloud Scheduler, cron patterns, batch processing |
| 83 | `firebase-extensions` | Pre-built extensions, Stripe, Algolia, Translate |
| 84 | `node-development` | Node.js patterns, streams, ESM, error handling |
| 85 | `serverless-patterns` | Cold starts, connection pooling, idempotency |

### Quality & Testing (10)
| # | Skill | Description |
|---|-------|-------------|
| 86 | `test-strategy` | Test pyramid, TDD, BDD, contract testing |
| 87 | `unit-testing` | Jest, Vitest, Jasmine, mocking, fixtures |
| 88 | `e2e-testing` | Playwright, Cypress, user flow testing |
| 89 | `performance-testing` | Lighthouse CI, WebPageTest, bundle analysis |
| 90 | `accessibility-testing` | axe-core, screen reader, keyboard, color contrast |
| 91 | `security-testing` | OWASP checks, dependency scanning, secrets detection |
| 92 | `code-review` | PR review checklist, anti-patterns, best practices |
| 93 | `linting-formatting` | ESLint, Prettier, Stylelint configuration |
| 94 | `cross-browser-testing` | Compatibility, polyfills, progressive enhancement |
| 95 | `visual-regression` | Screenshot testing, Chromatic, Percy |

### Deployment & Operations (6)
| # | Skill | Description |
|---|-------|-------------|
| 96 | `hostinger-deployment` | cPanel, FTP, .htaccess, DNS, SSL, PHP config |
| 97 | `firebase-deployment` | firebase deploy, channels, rollback, multi-site |
| 98 | `github-actions-ci` | Build pipeline, test, deploy, matrix, caching |
| 99 | `domain-management` | DNS records, nameservers, SSL, email routing |
| 100 | `build-optimization` | Vite config, tree-shaking, chunk strategy, minification |
| 101 | `deployment-checklist` | Pre-deploy validation, environment vars, rollback plan |

---

## 101 Prompts

### Discovery Prompts (20)
| # | Prompt | Purpose |
|---|--------|---------|
| 1 | `analyze-requirements` | Extract user stories from client conversation |
| 2 | `map-stakeholders` | Generate stakeholder influence matrix |
| 3 | `model-domain` | Create DDD bounded context map |
| 4 | `map-flows` | Generate business process flow diagrams |
| 5 | `evaluate-scenarios` | Tree-of-Thought scenario comparison |
| 6 | `validate-feasibility` | 7-dimension feasibility assessment |
| 7 | `analyze-competition` | Competitive landscape analysis |
| 8 | `research-users` | Generate user personas and journey maps |
| 9 | `model-processes` | BPMN process modeling |
| 10 | `prioritize-roadmap` | MoSCoW/WSJF roadmap prioritization |
| 11 | `estimate-costs` | FTE-month estimation with T-shirt sizing |
| 12 | `assess-risks` | Risk register generation |
| 13 | `plan-adoption` | ADKAR change management plan |
| 14 | `check-compliance` | GDPR/accessibility compliance checklist |
| 15 | `amplify-input` | Reinterpret vague requirements |
| 16 | `design-workshop` | Event storming session plan |
| 17 | `craft-pitch` | Executive summary with ROI |
| 18 | `strategize-data` | Data architecture recommendation |
| 19 | `orchestrate-discovery` | Full discovery pipeline execution |
| 20 | `sector-brief` | Industry-specific context analysis |

### Architecture Prompts (20)
| # | Prompt | Purpose |
|---|--------|---------|
| 21 | `design-system-arch` | C4 Level 2 architecture diagram |
| 22 | `design-api-contract` | OpenAPI 3.1 specification generation |
| 23 | `model-database` | Firestore collection schema design |
| 24 | `threat-model` | STRIDE threat analysis |
| 25 | `design-events` | Event catalog and trigger mapping |
| 26 | `design-state` | State management strategy recommendation |
| 27 | `design-components` | Component hierarchy and API |
| 28 | `design-responsive` | Breakpoint and layout strategy |
| 29 | `design-a11y` | Accessibility implementation plan |
| 30 | `design-tokens` | Design system token specification |
| 31 | `design-pwa` | Progressive Web App architecture |
| 32 | `design-performance` | Core Web Vitals optimization plan |
| 33 | `design-seo` | Technical SEO implementation plan |
| 34 | `design-caching` | Cache strategy with TTL policies |
| 35 | `design-auth` | Authentication flow with Firebase |
| 36 | `design-realtime` | Real-time data sync architecture |
| 37 | `plan-migration` | Migration strategy with rollback |
| 38 | `plan-infrastructure` | Hosting and CDN topology |
| 39 | `generate-diagram` | Mermaid diagram from description |
| 40 | `analyze-tradeoffs` | Decision matrix with weighted criteria |

### Development Prompts (30)
| # | Prompt | Purpose |
|---|--------|---------|
| 41 | `scaffold-project` | Initialize project with chosen template |
| 42 | `create-page` | Generate HTML page with semantic markup |
| 43 | `create-component` | Framework component with props/inputs |
| 44 | `create-form` | Form with validation and submission |
| 45 | `create-api-endpoint` | Cloud Function HTTP endpoint |
| 46 | `create-firestore-crud` | CRUD operations for a collection |
| 47 | `create-auth-flow` | Login/register/reset password flow |
| 48 | `create-file-upload` | File upload to Firebase Storage |
| 49 | `create-dashboard` | Admin dashboard with charts and tables |
| 50 | `create-landing` | Conversion-optimized landing page |
| 51 | `create-nav` | Responsive navigation component |
| 52 | `create-modal` | Accessible modal/dialog component |
| 53 | `create-table` | Sortable, filterable data table |
| 54 | `create-chart` | Data visualization component |
| 55 | `create-map` | Google Maps integration |
| 56 | `create-notification` | Push notification system |
| 57 | `create-search` | Full-text search with Algolia/Firestore |
| 58 | `create-email-template` | Responsive HTML email template |
| 59 | `create-payment` | Stripe checkout integration |
| 60 | `create-blog` | Blog with markdown and categories |
| 61 | `implement-dark-mode` | Dark mode with CSS variables |
| 62 | `implement-i18n` | Internationalization setup |
| 63 | `implement-animation` | Page transitions and micro-interactions |
| 64 | `implement-offline` | Offline-first with service worker |
| 65 | `implement-lazy-load` | Image and component lazy loading |
| 66 | `implement-infinite-scroll` | Paginated list with scroll loading |
| 67 | `implement-web-component` | Custom element with Shadow DOM |
| 68 | `implement-print` | Print-friendly stylesheet |
| 69 | `optimize-images` | WebP/AVIF conversion pipeline |
| 70 | `optimize-fonts` | Font loading and subsetting |

### Quality Prompts (15)
| # | Prompt | Purpose |
|---|--------|---------|
| 71 | `write-unit-tests` | Unit tests for a module |
| 72 | `write-e2e-tests` | End-to-end test scenario |
| 73 | `audit-performance` | Lighthouse performance audit |
| 74 | `audit-accessibility` | WCAG 2.1 compliance audit |
| 75 | `audit-security` | OWASP security checklist |
| 76 | `audit-seo` | Technical SEO checklist |
| 77 | `audit-bundle` | Bundle size analysis |
| 78 | `review-code` | Code review with quality criteria |
| 79 | `fix-lint-errors` | Auto-fix linting issues |
| 80 | `check-browser-compat` | Cross-browser compatibility check |
| 81 | `validate-html` | HTML validation and semantic check |
| 82 | `validate-css` | CSS validation and optimization |
| 83 | `validate-a11y` | Accessibility validation with axe |
| 84 | `generate-changelog` | Changelog from git history |
| 85 | `generate-docs` | Auto-generate documentation |

### Deployment Prompts (10)
| # | Prompt | Purpose |
|---|--------|---------|
| 86 | `deploy-hostinger` | Build and deploy to Hostinger |
| 87 | `deploy-firebase` | Build and deploy to Firebase Hosting |
| 88 | `setup-github-actions` | CI/CD pipeline for auto-deploy |
| 89 | `configure-domain` | DNS and domain setup |
| 90 | `setup-ssl` | SSL certificate configuration |
| 91 | `create-htaccess` | Apache .htaccess for SPA routing |
| 92 | `configure-headers` | Security headers and CORS |
| 93 | `setup-environments` | Dev/staging/prod environment config |
| 94 | `rollback-deployment` | Rollback to previous version |
| 95 | `pre-deploy-checklist` | Pre-deployment validation |

### Meta Prompts (6)
| # | Prompt | Purpose |
|---|--------|---------|
| 96 | `search-skills` | Find skills by keyword or domain |
| 97 | `find-agent` | Find the right agent for a task |
| 98 | `generate-spec` | Functional specification from requirements |
| 99 | `generate-adr` | Architecture Decision Record |
| 100 | `run-full-pipeline` | Analysis → Development → Deployment |
| 101 | `session-retrospective` | Session review with lessons learned |

---

## Workflow Modes

### Express Mode (`/jm-adk:express`)
Quick build — scaffold → develop → deploy (skip analysis)

### Guided Mode (`/jm-adk:guided`)
Full pipeline with human checkpoints at every gate

### Auto Mode (`/jm-adk:auto`)
Autonomous — from requirements to deployment, minimal interruption

### Analyze Mode (`/jm-adk:analyze`)
Discovery only — produces spec + pitch (no code)

### Develop Mode (`/jm-adk:develop`)
Development only — assumes spec exists, builds and deploys
