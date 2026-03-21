---
description: "Build and deploy to Firebase Hosting"
user-invocable: true
---

# /jm-adk:deploy-firebase

## Purpose

Build the production bundle and deploy to Firebase Hosting with optional Cloud Functions deployment. Use this for Firebase-integrated projects.

## Workflow

1. Build production bundle and Firebase Functions if applicable.
2. Run `firebase deploy` with configured services (hosting, functions, firestore rules).
3. Monitor deployment progress and verify each service deployment.
4. Report live URL and deployment summary with rollback hash.

## Arguments

- `only` — Deploy specific services: comma-separated (optional, e.g., "hosting,functions")
- `channel` — Deploy to a preview channel (optional)

## Examples

```bash
/jm-adk:deploy-firebase
/jm-adk:deploy-firebase only=hosting
/jm-adk:deploy-firebase channel=staging
```

## Related Commands

- `/jm-adk:deploy` — Generic deploy command
- `/jm-adk:deploy-preview` — Deploy to preview channel
- `/jm-adk:rollback` — Rollback Firebase deployment
