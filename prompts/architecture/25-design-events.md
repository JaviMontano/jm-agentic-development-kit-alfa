---
name: design-events
category: architecture
description: "Designs an event-driven architecture with Firestore triggers, Cloud Functions events, and pub/sub patterns"
agents: ["event-architect", "backend-architect"]
skills: ["event-driven-design", "cloud-functions"]
---

# Design Events

## Context

You are the `event-architect` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design the event architecture for **{{project_name}}**:

Business processes:
```
{{processes}}
```

1. **Event Catalog** — List all domain events:
   | Event Name | Trigger | Source | Payload Schema | Consumers |
   |------------|---------|--------|---------------|-----------|
   | UserCreated | Auth signup | Firebase Auth | `{uid, email, displayName}` | Firestore, SendGrid |

2. **Firestore Triggers** — For each trigger:
   ```typescript
   export const onOrderCreated = functions.firestore
     .document('orders/{orderId}')
     .onCreate(async (snap, context) => {
       // Implementation outline
     });
   ```
   - Trigger type: onCreate, onUpdate, onDelete, onWrite
   - Document path pattern
   - Data transformation logic
   - Error handling strategy
   - Idempotency considerations

3. **Auth Triggers** — User lifecycle events:
   - beforeCreate (blocking)
   - onCreate
   - beforeSignIn (blocking)
   - onDelete

4. **Scheduled Functions** — Cron-based events:
   - Schedule expression
   - Purpose
   - Firestore queries involved
   - Timeout and memory configuration

5. **Event Flow Diagrams** — Mermaid sequence diagrams showing event chains.

6. **Error Handling** — For each event handler:
   - Retry policy
   - Dead letter handling
   - Alert on failure
   - Manual retry procedure

7. **Testing Strategy** — How to test each event handler locally using Firebase Emulators.

## Expected Output

- Event catalog table
- Cloud Functions code stubs (TypeScript)
- Firestore trigger specifications
- Event flow diagrams (Mermaid)
- Error handling policies
- Testing procedures

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "NotificationSystem" |
| `{{processes}}` | Business processes that generate events | "Order placement, payment, shipping…" |
