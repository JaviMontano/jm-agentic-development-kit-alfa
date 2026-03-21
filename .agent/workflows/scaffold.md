---
description: "Initialize project from template — Firebase, Angular, React, or Vanilla JS"
---

# /scaffold

## Purpose
Initialize a new project from one of JM-ADK's starter templates, fully configured with Firebase services, build tooling, linting, and deployment pipeline — ready for development in minutes.

## Workflow

### Phase 1: Template Selection
**Agent**: `adk-orchestrator`, `skill-router`
**Skills**: `input-analysis`, `discovery-orchestration`

1. Determine project type from user input or interactive prompt:
   - `firebase` — Firebase Hosting + Firestore + Auth + vanilla JS frontend
   - `angular` — Angular 18+ with Firebase integration and Angular CLI
   - `react` — React 19+ with Firebase integration and Vite
   - `vanilla` — Pure HTML/CSS/JS static site for Hostinger deployment
   - `node-api` — Cloud Functions API with Express.js
2. Gather project configuration:
   - Project name and description
   - Firebase project ID (if applicable)
   - Deployment target (Hostinger or Firebase Hosting)
   - Required Firebase services (Auth, Firestore, Storage, Functions)
3. Validate selections against JM-ADK stack constraints

### Phase 2: Project Initialization
**Agent**: `scaffold-specialist`
**Skills**: `firebase-setup`, `angular-development`, `react-development`, `node-development`

1. Copy template files from `templates/{template-type}/`
2. Replace placeholder values (project name, IDs, descriptions)
3. Initialize package.json with correct dependencies
4. Configure build tool:
   - Vanilla/Firebase: Vite or plain HTML
   - Angular: Angular CLI with standalone components
   - React: Vite with React plugin
   - Node API: esbuild for Cloud Functions
5. Set up directory structure following JM-ADK conventions

### Phase 3: Firebase Configuration
**Agent**: `firebase-specialist`
**Skills**: `firebase-setup`, `firebase-auth`, `firestore-modeling`, `firestore-security-rules`

1. Initialize Firebase project (`firebase init`)
2. Configure selected services:
   - Firestore: Create initial security rules and indexes
   - Auth: Set up authentication providers
   - Hosting: Configure rewrites, redirects, and headers
   - Functions: Set up runtime and entry point
   - Storage: Configure storage rules
3. Create `.firebaserc` with project alias
4. Set up Firebase emulators for local development
5. Generate environment configuration file (non-secret values only)

### Phase 4: Development Tooling
**Agent**: `quality-engineer`
**Skills**: `linting-formatting`, `github-actions-ci`, `unit-testing`

1. Configure ESLint with project-appropriate rules
2. Configure Prettier for consistent formatting
3. Set up Git hooks (pre-commit lint, pre-push test)
4. Create initial test setup (Jest/Vitest/Jasmine based on framework)
5. Add VS Code workspace settings and recommended extensions
6. Create GitHub Actions CI pipeline (lint, test, build)

### Gate: Scaffold Verification
- [ ] `npm install` completes without errors
- [ ] `npm run build` produces output without errors
- [ ] `npm run dev` starts development server
- [ ] Firebase emulators start successfully (if Firebase template)
- [ ] Linting passes with zero errors on initial codebase
- [ ] Default page renders in browser

### Phase 5: Documentation
**Agent**: `technical-writer`
**Skills**: `deployment-checklist`, `product-roadmapping`

1. Generate project README with setup instructions
2. Document available npm scripts (dev, build, test, deploy, lint)
3. Create CONTRIBUTING guide with code conventions
4. Add deployment instructions for target platform
5. Include environment variable documentation (.env.example)

## Output
- Fully initialized project directory with chosen template
- Firebase configuration (if applicable)
- Build tooling (ESLint, Prettier, Vite/Webpack/CLI)
- CI pipeline (GitHub Actions)
- Test setup with sample test
- Project documentation (README, CONTRIBUTING, .env.example)
