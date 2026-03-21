---
description: "Full SA-style development pipeline: design, scaffold, build, test, and deploy"
---

# /develop

## Purpose
Execute a complete development cycle from architectural design through production deployment, following SA methodology with quality gates at every phase, targeting Firebase and Hostinger.

## Workflow

### Phase 1: Architecture Design
**Agent**: `architecture-designer`
**Skills**: `system-architecture`, `component-architecture`, `infrastructure-design`

1. Review analysis specification (requires `/analyze` output or equivalent input)
2. Define component tree and module boundaries
3. Select framework strategy (vanilla JS baseline, Angular/React layer if justified)
4. Design data architecture (Firestore collections, security rules, indexes)
5. Define API contract (REST endpoints, Cloud Functions signatures)
6. Produce Architecture Design Document with Mermaid component diagrams

### Phase 2: Scaffold
**Agent**: `scaffold-specialist`
**Skills**: `firebase-setup`, `firebase-hosting`, `linting-formatting`

1. Initialize project from appropriate template (firebase/angular/react/vanilla)
2. Configure Firebase project (Firestore, Auth, Hosting, Functions as needed)
3. Set up build tooling (Vite/Webpack/Angular CLI)
4. Configure linting (ESLint) and formatting (Prettier)
5. Create directory structure matching architecture design
6. Initialize git repository with .gitignore and branch strategy

### Gate: Scaffold Gate (G0)
- [ ] Project builds successfully with zero errors
- [ ] Firebase emulators start and connect
- [ ] Linting passes with zero warnings
- [ ] No secrets or API keys in source files
- [ ] Directory structure matches architecture document

### Phase 3: Build — Frontend
**Agent**: `frontend-craftsman`, `angular-specialist`, `react-specialist`, `vanilla-js-specialist`
**Skills**: `html-semantic`, `css-architecture`, `responsive-design`, `form-engineering`, `navigation-patterns`

1. Implement HTML structure with semantic markup
2. Build CSS architecture (custom properties, responsive grid, component styles)
3. Implement core UI components (navigation, forms, modals, cards)
4. Add client-side interactivity (event handling, state management, DOM updates)
5. Ensure progressive enhancement (works without JS where possible)
6. Implement dark mode and accessibility features

### Phase 4: Build — Backend
**Agent**: `firebase-specialist`, `node-specialist`
**Skills**: `firebase-auth`, `firestore-modeling`, `firestore-security-rules`, `cloud-functions`, `rest-api-development`

1. Implement Firestore data model (collections, subcollections, references)
2. Write Firestore security rules with test coverage
3. Implement Firebase Auth flows (email/password, Google, custom claims)
4. Build Cloud Functions (triggers, callable, HTTP endpoints)
5. Configure Firebase Storage rules and upload handlers
6. Set up scheduled functions and background jobs if needed

### Gate: Build Gate (G1-G2)
- [ ] All components render correctly across breakpoints
- [ ] Firestore security rules pass all test cases
- [ ] Auth flows work end-to-end (signup, login, reset, logout)
- [ ] Cloud Functions deploy and respond correctly
- [ ] Lighthouse Performance > 90
- [ ] Lighthouse Accessibility > 95
- [ ] No console errors in browser dev tools

### Phase 5: Test
**Agent**: `quality-engineer`
**Skills**: `unit-testing`, `e2e-testing`, `security-testing`, `performance-testing`, `accessibility-testing`

1. Write unit tests for business logic and utility functions
2. Write integration tests for Firebase operations
3. Run end-to-end tests for critical user flows
4. Execute security scan (exposed keys, XSS vectors, CSRF)
5. Run Lighthouse audit and fix any scores below threshold
6. Validate WCAG 2.1 AA compliance

### Phase 6: Deploy
**Agent**: `deployment-specialist`
**Skills**: `deployment-checklist`, `firebase-deployment`, `hostinger-deployment`, `domain-management`

1. Run pre-deployment checklist (minification, cache headers, error pages)
2. Build optimized production bundle
3. Deploy to Firebase Hosting or Hostinger (based on project config)
4. Configure custom domain and SSL
5. Verify production deployment (smoke test critical paths)
6. Set up monitoring (Google Analytics, error tracking)

### Gate: Deployment Gate (G3)
- [ ] Production build is minified and optimized
- [ ] Site loads under 3 seconds on 3G connection
- [ ] Custom domain resolves with valid SSL
- [ ] All critical flows work in production
- [ ] Analytics and error tracking are active
- [ ] Works on Hostinger without server-side runtime (if Hostinger target)

## Output
- Architecture Design Document (component diagrams, data model, API contract)
- Scaffolded project with build tooling and linting
- Implemented frontend (HTML/CSS/JS or framework components)
- Implemented backend (Firestore, Auth, Functions, Security Rules)
- Test results (unit, integration, e2e, security, accessibility)
- Production deployment (live URL, domain configured, monitoring active)
