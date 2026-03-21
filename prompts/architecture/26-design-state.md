---
name: design-state
category: architecture
description: "Designs the frontend state management architecture including stores, selectors, effects, and Firestore synchronization"
agents: ["frontend-architect", "state-designer"]
skills: ["state-management", "reactive-patterns"]
---

# Design State Management

## Context

You are the `frontend-architect` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design the state management architecture for **{{project_name}}** using **{{framework}}**:

Features:
```
{{features}}
```

1. **State Tree Design** — Define the global state shape:
   ```typescript
   interface AppState {
     auth: AuthState;
     // ... other slices
   }
   ```

2. **State Slices** — For each feature:
   - Slice name and interface
   - Initial state
   - Properties and their types
   - Loading/error states
   - Derived state (selectors/computed)

3. **State Management Choice** — Justify the approach:
   - **Angular**: NgRx, NGXS, Akita, or Signals
   - **React**: Redux Toolkit, Zustand, Jotai, or Context API
   - **Vanilla JS**: Custom pub/sub or state machine

4. **Firestore Synchronization** — For each state slice connected to Firestore:
   - Real-time listener setup and teardown
   - Optimistic updates strategy
   - Conflict resolution
   - Offline persistence integration

5. **Actions/Events** — Catalog of all state mutations:
   | Action | Payload | State Change | Side Effect |
   |--------|---------|-------------|-------------|

6. **Selectors/Derived State** — Complex computed values:
   - Memoization strategy
   - Composition patterns

7. **DevTools Integration** — How to debug state (Redux DevTools, etc.).

## Expected Output

- State tree interface (TypeScript)
- State slice definitions
- Action catalog
- Firestore sync patterns
- Selector definitions
- Code examples for key patterns

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "TaskBoard" |
| `{{framework}}` | Frontend framework | "React" |
| `{{features}}` | Features requiring state | "Auth, tasks, projects, notifications" |
