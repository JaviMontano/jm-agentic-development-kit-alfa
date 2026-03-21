---
name: deploy-firebase
category: deployment
description: "Guides deployment to Firebase Hosting with multi-site setup, preview channels, and Cloud Functions deployment"
agents: ["deployment-engineer", "firebase-specialist"]
skills: ["firebase-deployment", "firebase-hosting"]
---

# Deploy to Firebase

## Context

You are the `deployment-engineer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Deploy **{{project_name}}** to Firebase Hosting:

1. **Firebase CLI Setup**:
   ```bash
   npm install -g firebase-tools
   firebase login
   firebase init hosting
   ```

2. **firebase.json Configuration**:
   ```json
   {
     "hosting": {
       "public": "dist",
       "ignore": ["firebase.json", "**/.*", "**/node_modules/**"],
       "rewrites": [{ "source": "**", "destination": "/index.html" }],
       "headers": [
         {
           "source": "**/*.@(js|css)",
           "headers": [{ "key": "Cache-Control", "value": "public, max-age=31536000, immutable" }]
         },
         {
           "source": "**",
           "headers": [
             { "key": "X-Content-Type-Options", "value": "nosniff" },
             { "key": "X-Frame-Options", "value": "DENY" },
             { "key": "X-XSS-Protection", "value": "1; mode=block" }
           ]
         }
       ]
     },
     "firestore": { "rules": "firestore.rules", "indexes": "firestore.indexes.json" },
     "storage": { "rules": "storage.rules" },
     "functions": { "source": "functions", "runtime": "nodejs18" }
   }
   ```

3. **Multi-Environment Deployment**:
   ```bash
   # .firebaserc
   {
     "projects": {
       "default": "{{project_id}}-dev",
       "staging": "{{project_id}}-staging",
       "production": "{{project_id}}-prod"
     }
   }

   firebase use staging
   firebase deploy --only hosting
   ```

4. **Preview Channels** — For PR previews:
   ```bash
   firebase hosting:channel:deploy preview-{{branch_name}} --expires 7d
   ```

5. **Full Deploy** — All services:
   ```bash
   firebase deploy  # hosting + functions + firestore rules + storage rules
   # Or selective:
   firebase deploy --only hosting
   firebase deploy --only functions:myFunction
   firebase deploy --only firestore:rules
   ```

6. **Cloud Functions Deployment**:
   - Region configuration
   - Memory and timeout settings
   - Environment variables (firebase functions:config:set)
   - Secrets management

7. **Custom Domain Setup**:
   ```bash
   firebase hosting:site:create {{site_name}}
   # Add custom domain in Firebase Console
   ```

8. **Post-Deployment Verification**:
   - [ ] Site accessible at Firebase URL
   - [ ] Custom domain resolving
   - [ ] SSL certificate active
   - [ ] Cloud Functions responding
   - [ ] Firestore rules deployed
   - [ ] Storage rules deployed

## Expected Output

- firebase.json configuration
- .firebaserc with environments
- Deployment scripts for each environment
- Preview channel setup
- Custom domain guide
- Post-deployment checklist
- Rollback procedure

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "WebApp" |
| `{{project_id}}` | Firebase project ID | "my-app" |
