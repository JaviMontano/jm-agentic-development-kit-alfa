---
name: design-system-arch
category: architecture
description: "Designs the overall system architecture including frontend, backend, Firebase services, and deployment topology"
agents: ["system-architect", "cloud-architect"]
skills: ["system-design", "firebase-architecture"]
---

# Design System Architecture

## Context

You are the `system-architect` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design the system architecture for **{{project_name}}**:

Requirements:
```
{{requirements}}
```

1. **Architecture Style** — Select and justify: Monolithic SPA, Micro-frontends, Jamstack, or Hybrid. Consider the team size ({{team_size}}) and project complexity.

2. **Component Diagram** — High-level components:
   - Frontend application (Angular or React)
   - Firebase services (Auth, Firestore, Storage, Functions, Hosting)
   - External integrations
   - CDN layer

3. **Data Architecture** — How data flows through the system:
   - Client-side state management (NgRx, Redux, Context API, or signals)
   - Firestore real-time subscriptions vs. REST-style reads
   - Offline persistence strategy
   - Caching layers

4. **Security Architecture** — Defense in depth:
   - Authentication flow (Firebase Auth providers)
   - Authorization model (Firestore rules + custom claims)
   - Input validation (client + Cloud Functions)
   - CORS configuration
   - Content Security Policy

5. **Deployment Architecture** — Infrastructure topology:
   - Firebase Hosting multi-site setup OR Hostinger VPS
   - CDN configuration
   - Domain and SSL
   - Environment strategy (dev/staging/prod)

6. **Scalability Plan** — How the architecture handles growth:
   - Firestore sharding strategies
   - Cloud Functions scaling
   - Frontend bundle splitting

7. **Architecture Decision Records** — Document key decisions using ADR format.

Produce a Mermaid C4 diagram (Context level).

## Expected Output

- Architecture style justification
- Component diagram (Mermaid)
- Data flow diagram
- Security architecture document
- Deployment topology diagram
- Scalability plan
- ADRs for key decisions

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "MarketplaceApp" |
| `{{requirements}}` | Key requirements summary | "Real-time inventory, multi-tenant…" |
| `{{team_size}}` | Development team size | "3 developers" |
| `{{framework}}` | Frontend framework choice | "Angular" or "React" |
