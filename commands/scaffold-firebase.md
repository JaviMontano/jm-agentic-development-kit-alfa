---
description: "Firebase + vanilla JS project"
user-invocable: true
---

# /jm-adk:scaffold-firebase

## Purpose

Scaffold a project using Firebase services (Hosting, Firestore, Auth, Functions) with vanilla JavaScript. Use this for lightweight apps that leverage Firebase without a frontend framework.

## Workflow

1. Initialize Firebase project with selected services (Hosting, Firestore, Auth, Functions).
2. Generate project structure with public directory, Firebase config, and security rules.
3. Create base HTML/CSS/JS files with Firebase SDK initialization and auth boilerplate.
4. Configure deployment targets and verify local emulator setup.

## Arguments

- `name` — Project name (optional)
- `services` — Firebase services: comma-separated (optional, default: "hosting,firestore,auth")
- `region` — Functions region (optional, default: us-central1)

## Examples

```bash
/jm-adk:scaffold-firebase
/jm-adk:scaffold-firebase name=my-app services="hosting,firestore,auth,functions"
```

## Related Commands

- `/jm-adk:scaffold` — Meta-scaffold with template selection
- `/jm-adk:deploy-firebase` — Deploy to Firebase
- `/jm-adk:create-auth` — Add authentication flows
