---
name: setup-environments
category: deployment
description: "Sets up development, staging, and production environments with separate Firebase projects and configuration"
agents: ["environment-engineer", "devops-engineer"]
skills: ["environment-management", "firebase-projects"]
---

# Setup Environments

## Context

You are the `environment-engineer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Setup environments for **{{project_name}}**:

1. **Environment Strategy**:
   | Environment | Firebase Project | Domain | Purpose |
   |-------------|-----------------|--------|---------|
   | Development | {{project_id}}-dev | localhost:5000 | Local development |
   | Staging | {{project_id}}-staging | staging.{{domain}} | Pre-production testing |
   | Production | {{project_id}}-prod | {{domain}} | Live users |

2. **Firebase Project Setup** — Per environment:
   ```bash
   firebase projects:create {{project_id}}-dev
   firebase projects:create {{project_id}}-staging
   firebase projects:create {{project_id}}-prod
   ```

3. **.firebaserc** — Project aliases:
   ```json
   {
     "projects": {
       "default": "{{project_id}}-dev",
       "staging": "{{project_id}}-staging",
       "production": "{{project_id}}-prod"
     }
   }
   ```

4. **Environment Variables** — Per environment:
   ```javascript
   // src/config/firebase.config.js
   const config = {
     development: {
       apiKey: "...",
       authDomain: "{{project_id}}-dev.firebaseapp.com",
       projectId: "{{project_id}}-dev",
       // ...
     },
     staging: { /* ... */ },
     production: { /* ... */ }
   };
   export default config[process.env.NODE_ENV || 'development'];
   ```

5. **Environment Files**:
   ```
   .env.development
   .env.staging
   .env.production
   .env.example  (template, committed to git)
   ```

6. **Build Scripts** — Per environment:
   ```json
   {
     "scripts": {
       "dev": "vite --mode development",
       "build:staging": "vite build --mode staging",
       "build:prod": "vite build --mode production",
       "deploy:staging": "npm run build:staging && firebase use staging && firebase deploy",
       "deploy:prod": "npm run build:prod && firebase use production && firebase deploy"
     }
   }
   ```

7. **Local Development** — Firebase Emulators:
   ```bash
   firebase emulators:start --project {{project_id}}-dev
   ```
   - Emulated services: Auth, Firestore, Storage, Functions
   - Seed data for development
   - Emulator UI at localhost:4000

8. **Data Isolation** — Ensure environments are completely separate:
   - No cross-environment data access
   - Different API keys
   - Different Firestore databases

## Expected Output

- Firebase project creation commands
- .firebaserc configuration
- Environment variable files (.env.*)
- Firebase config per environment
- Build and deploy scripts
- Emulator configuration
- Data seeding scripts

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "MultiEnvApp" |
| `{{project_id}}` | Base Firebase project ID | "my-app" |
| `{{domain}}` | Production domain | "app.example.com" |
