---
name: audit-bundle
category: quality
description: "Analyzes the JavaScript bundle for size, tree-shaking effectiveness, code splitting, and dependency optimization"
agents: ["bundle-auditor", "build-optimizer"]
skills: ["bundle-analysis", "build-optimization"]
---

# Audit Bundle Size

## Context

You are the `bundle-auditor` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Analyze the bundle for **{{project_name}}**:

Build configuration:
```
{{build_config}}
```

1. **Bundle Size Report**:
   | Chunk | Raw Size | Gzipped | Brotli |
   |-------|----------|---------|--------|
   | main.js | | | |
   | vendor.js | | | |
   - Total JavaScript
   - Total CSS
   - Total assets

2. **Dependency Analysis** — Largest dependencies:
   | Package | Size (KB) | Used Features | Tree-Shakeable |
   |---------|----------|---------------|----------------|
   - Firebase SDK modules imported
   - Framework bundle size
   - Utility library sizes (lodash, moment, etc.)

3. **Firebase SDK Audit** — Modular imports check:
   ```javascript
   // BAD: imports entire SDK
   import firebase from 'firebase/app';
   // GOOD: modular imports
   import { getFirestore, collection } from 'firebase/firestore';
   ```
   - List all Firebase imports
   - Identify non-modular imports
   - Estimate savings from modular migration

4. **Code Splitting Analysis**:
   - Route-based splits present?
   - Dynamic imports used?
   - Shared chunks configured?
   - Entry point count

5. **Dead Code Detection**:
   - Unused exports
   - Unreachable code paths
   - Unused CSS classes
   - Unused dependencies in package.json

6. **Optimization Recommendations**:
   | Action | Current Size | Projected Size | Savings |
   |--------|-------------|----------------|---------|
   - Replace heavy libraries with lighter alternatives
   - Enable tree-shaking properly
   - Add code splitting where missing
   - Lazy load heavy components
   - Remove unused dependencies

7. **Performance Budget Enforcement**:
   - Set budget limits in build config
   - CI check for budget violations

## Expected Output

- Bundle size report tables
- Dependency size breakdown
- Firebase SDK audit findings
- Code splitting recommendations
- Dead code removal list
- Optimization action plan with projected savings
- Build configuration changes

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "LargeApp" |
| `{{build_config}}` | Build tool configuration | "Webpack 5 / Vite / Angular CLI" |
