---
name: rollback-deployment
category: deployment
description: "Creates a deployment rollback plan with procedures for Firebase Hosting, Cloud Functions, and Firestore rules"
agents: ["rollback-engineer", "incident-responder"]
skills: ["rollback-procedures", "incident-response"]
---

# Rollback Deployment

## Context

You are the `rollback-engineer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a rollback plan for **{{project_name}}**:

1. **Firebase Hosting Rollback**:
   ```bash
   # List previous deployments
   firebase hosting:channel:list

   # Rollback to previous version
   firebase hosting:clone {{project_id}}:live {{project_id}}:live --version {{previous_version}}
   ```
   - Firebase Console → Hosting → Release History → Rollback

2. **Cloud Functions Rollback**:
   ```bash
   # Redeploy previous version from git
   git checkout {{previous_commit}}
   cd functions && npm install
   firebase deploy --only functions
   ```
   - Note: No built-in version rollback for Functions
   - Keep tagged releases in git

3. **Firestore Rules Rollback**:
   ```bash
   # Restore previous rules from git
   git checkout {{previous_commit}} -- firestore.rules
   firebase deploy --only firestore:rules
   ```

4. **Firestore Data Rollback** — If data was corrupted:
   ```bash
   # Import from scheduled backup
   gcloud firestore import gs://{{backup_bucket}}/{{backup_path}}
   ```

5. **Rollback Decision Matrix**:
   | Symptom | Check | Rollback Scope | Priority |
   |---------|-------|---------------|----------|
   | Site down | Hosting | Hosting only | P0 |
   | API errors | Functions logs | Functions only | P0 |
   | Data access denied | Rules | Firestore rules | P1 |
   | Wrong data shown | Firestore | Data restore | P1 |

6. **Rollback Procedure** — Step by step:
   - Detect issue (monitoring alert or user report)
   - Assess scope (which service affected)
   - Communicate (status page, team notification)
   - Execute rollback (specific to affected service)
   - Verify fix (smoke tests)
   - Post-mortem (root cause analysis)

7. **Prevention**:
   - Staged rollouts (preview channels first)
   - Canary deployments
   - Automated smoke tests post-deploy
   - Feature flags for risky features

8. **Runbook** — Copy-paste commands for each scenario.

## Expected Output

- Rollback procedures per service
- Decision matrix
- Step-by-step runbook
- Verification checklist
- Post-mortem template
- Prevention recommendations

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "ProdApp" |
| `{{project_id}}` | Firebase project ID | "my-app-prod" |
