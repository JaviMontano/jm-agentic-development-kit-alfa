---
description: "React 19+ with Firebase"
user-invocable: true
---

# /jm-adk:scaffold-react

## Purpose

Scaffold a React 19+ project with Firebase integration, using Vite, React Router, and modern hooks patterns. Use this for dynamic, component-driven applications.

## Workflow

1. Generate React project with Vite, TypeScript, and React Router v7.
2. Configure Firebase SDK for Firestore, Auth, and Storage.
3. Set up component library structure, custom hooks, and context providers.
4. Configure testing (Vitest + Testing Library), linting (ESLint), and build pipeline.

## Arguments

- `name` — Project name (optional)
- `features` — Features: comma-separated (optional, e.g., "tailwind,pwa,router")
- `firebase` — Firebase services: comma-separated (optional, default: "firestore,auth")

## Examples

```bash
/jm-adk:scaffold-react
/jm-adk:scaffold-react name=my-app features="tailwind,pwa"
```

## Related Commands

- `/jm-adk:scaffold` — Meta-scaffold with template selection
- `/jm-adk:scaffold-angular` — Alternative: Angular scaffold
- `/jm-adk:deploy-firebase` — Deploy to Firebase
