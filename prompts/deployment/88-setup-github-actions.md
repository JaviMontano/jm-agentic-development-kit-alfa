---
name: setup-github-actions
category: deployment
description: "Creates GitHub Actions CI/CD workflows for testing, building, and deploying to Firebase or Hostinger"
agents: ["cicd-engineer", "devops-engineer"]
skills: ["github-actions", "ci-cd-pipeline"]
---

# Setup GitHub Actions

## Context

You are the `cicd-engineer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Setup GitHub Actions CI/CD for **{{project_name}}**:

Deployment target: {{deployment_target}}

1. **CI Workflow** — `.github/workflows/ci.yml`:
   ```yaml
   name: CI
   on:
     pull_request:
       branches: [main, develop]
   jobs:
     lint:
       runs-on: ubuntu-latest
       steps:
         - uses: actions/checkout@v4
         - uses: actions/setup-node@v4
           with: { node-version: '18' }
         - run: npm ci
         - run: npm run lint
     test:
       runs-on: ubuntu-latest
       steps:
         - uses: actions/checkout@v4
         - uses: actions/setup-node@v4
           with: { node-version: '18' }
         - run: npm ci
         - run: npm test -- --coverage
     build:
       runs-on: ubuntu-latest
       steps:
         - uses: actions/checkout@v4
         - uses: actions/setup-node@v4
           with: { node-version: '18' }
         - run: npm ci
         - run: npm run build
   ```

2. **CD Workflow — Firebase** — `.github/workflows/deploy.yml`:
   ```yaml
   name: Deploy to Firebase
   on:
     push:
       branches: [main]
   jobs:
     deploy:
       runs-on: ubuntu-latest
       steps:
         - uses: actions/checkout@v4
         - uses: actions/setup-node@v4
         - run: npm ci && npm run build
         - uses: FirebaseExtended/action-hosting-deploy@v0
           with:
             repoToken: '${{ secrets.GITHUB_TOKEN }}'
             firebaseServiceAccount: '${{ secrets.FIREBASE_SERVICE_ACCOUNT }}'
             channelId: live
             projectId: {{project_id}}
   ```

3. **CD Workflow — Hostinger** — FTP deployment.

4. **Preview Deployments** — On PR:
   ```yaml
   - uses: FirebaseExtended/action-hosting-deploy@v0
     with:
       channelId: 'pr-${{ github.event.pull_request.number }}'
   ```

5. **Environment Secrets** — Required GitHub secrets:
   - `FIREBASE_SERVICE_ACCOUNT` — Service account JSON
   - `FTP_HOST`, `FTP_USER`, `FTP_PASS` — If Hostinger
   - Other API keys

6. **Branch Strategy**:
   - `main` → Production deploy
   - `develop` → Staging deploy
   - `feature/*` → CI only + preview channel

7. **Notifications** — Slack/email on failure.

## Expected Output

- CI workflow file (ci.yml)
- CD workflow file (deploy.yml)
- Preview deployment workflow
- Secrets documentation
- Branch strategy document
- Status badge markdown

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "WebApp" |
| `{{deployment_target}}` | Where to deploy | "firebase" or "hostinger" |
| `{{project_id}}` | Firebase project ID | "my-app-prod" |
