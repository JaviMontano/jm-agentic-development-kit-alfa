---
name: scaffold-project
category: development
description: "Scaffolds a complete project structure with Firebase config, folder hierarchy, base files, and development tooling"
agents: ["project-scaffolder", "devops-engineer"]
skills: ["project-scaffolding", "firebase-init"]
---

# Scaffold Project

## Context

You are the `project-scaffolder` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Scaffold a new project for **{{project_name}}** using **{{framework}}**:

1. **Project Structure** — Create the complete folder hierarchy:
   ```
   {{project_name}}/
   ├── public/              # Static assets
   │   ├── index.html
   │   ├── manifest.json
   │   ├── robots.txt
   │   └── assets/
   ├── src/
   │   ├── components/      # Reusable UI components
   │   ├── pages/           # Page/route components
   │   ├── services/        # Firebase service wrappers
   │   ├── utils/           # Helper functions
   │   ├── styles/          # Global styles, tokens
   │   ├── hooks/           # Custom hooks (React) or services (Angular)
   │   └── config/          # App configuration
   ├── functions/           # Firebase Cloud Functions
   │   ├── src/
   │   └── package.json
   ├── firebase.json        # Firebase config
   ├── firestore.rules      # Security rules
   ├── firestore.indexes.json
   ├── storage.rules
   ├── .firebaserc          # Project aliases
   ├── .env.example
   ├── .gitignore
   └── package.json
   ```

2. **Firebase Configuration** — Generate:
   - `firebase.json` with hosting, functions, firestore, storage config
   - `.firebaserc` with project aliases (dev, staging, prod)
   - Initial `firestore.rules` (locked down by default)
   - Initial `storage.rules`

3. **Base Files** — Generate starter code:
   - `src/services/firebase.js` — Firebase app initialization
   - `src/services/auth.js` — Auth helper functions
   - `src/services/firestore.js` — Firestore helper functions
   - `src/config/constants.js` — App constants
   - `src/styles/tokens.css` — Design tokens
   - `src/styles/reset.css` — CSS reset

4. **Development Tooling** — Configure:
   - ESLint configuration
   - Prettier configuration
   - `.gitignore` (node_modules, .env, firebase-debug.log, etc.)
   - `.env.example` with required variables

5. **Package Dependencies** — `package.json` with:
   - Firebase SDK
   - Framework-specific dependencies
   - Dev dependencies (linters, formatters)
   - Scripts (dev, build, deploy, emulators)

6. **Firebase Emulator Setup** — Local development configuration.

## Expected Output

- Complete folder structure with all files
- Firebase configuration files
- Base service files with Firebase SDK initialization
- Development tooling configs
- package.json with all dependencies
- README with setup instructions

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "my-app" |
| `{{framework}}` | Framework choice | "vanilla", "react", or "angular" |
| `{{firebase_services}}` | Firebase services to enable | "auth, firestore, storage, functions, hosting" |
