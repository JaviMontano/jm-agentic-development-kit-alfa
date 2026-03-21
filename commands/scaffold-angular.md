---
description: "Angular 18+ with Firebase"
user-invocable: true
---

# /jm-adk:scaffold-angular

## Purpose

Scaffold an Angular 18+ project with Firebase integration, standalone components, and signals-based architecture. Use this for enterprise-grade applications requiring a structured framework.

## Workflow

1. Generate Angular project with standalone components, signals, and modern control flow.
2. Configure AngularFire for Firestore, Auth, and Storage integration.
3. Set up routing, lazy loading, environment configs, and Angular Material/CDK.
4. Configure testing (Jest/Vitest), linting (ESLint), and CI pipeline.

## Arguments

- `name` — Project name (optional)
- `features` — Features: comma-separated (optional, e.g., "material,pwa,ssr")
- `firebase` — Firebase services: comma-separated (optional, default: "firestore,auth")

## Examples

```bash
/jm-adk:scaffold-angular
/jm-adk:scaffold-angular name=admin-portal features="material,pwa"
```

## Related Commands

- `/jm-adk:scaffold` — Meta-scaffold with template selection
- `/jm-adk:scaffold-react` — Alternative: React scaffold
- `/jm-adk:deploy-firebase` — Deploy to Firebase
