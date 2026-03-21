---
name: event-architecture
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Designs event-driven architectures using pub/sub messaging, Cloud Functions
  triggers, event sourcing, and CQRS patterns. Covers event schemas,
  ordering guarantees, and dead-letter handling.
  Trigger: "pub/sub", "event-driven", "Cloud Functions", "event sourcing", "CQRS"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash
---

# Event Architecture

> "Events are first-class citizens in a reactive system." — Jonas Boner

## TL;DR

Designs event-driven architectures using pub/sub, Cloud Functions triggers, event sourcing, and CQRS to build loosely coupled, scalable systems. Use this skill when designing async workflows, decoupling services, implementing audit trails, or building real-time reactive features.

## Procedure

### Step 1: Discover
- Identify business events that represent meaningful state transitions
- Map current synchronous coupling points that could benefit from async decoupling
- Review existing messaging infrastructure (Pub/Sub, Eventarc, Cloud Tasks)
- Assess ordering, exactly-once, and at-least-once delivery requirements

### Step 2: Analyze
- Classify events: domain events, integration events, notification events
- Design event schemas with versioning strategy (schema registry)
- Determine delivery guarantees needed per event type
- Evaluate event sourcing applicability: is full audit trail needed?
- Assess CQRS: are read and write models significantly different?

### Step 3: Execute
- Define event catalog with name, schema, producer, consumers, and SLA
- Design Cloud Functions triggers: Firestore, Pub/Sub, HTTP, Scheduled
- Implement dead-letter queues for failed event processing
- Create event flow diagrams showing producers, channels, and consumers
- Document retry policies, idempotency requirements, and poison message handling
- Design event versioning and backward compatibility strategy

### Step 4: Validate
- Verify all events have defined schemas with version numbers
- Confirm consumers are idempotent (safe to process the same event twice)
- Check dead-letter queue monitoring and alerting is configured
- Validate event ordering guarantees match business requirements

## Quality Criteria

- [ ] Event catalog documents all events with schemas and ownership
- [ ] Consumers are idempotent and handle out-of-order delivery
- [ ] Dead-letter queues exist with monitoring and alerting
- [ ] Event versioning strategy supports backward compatibility
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- Event soup: too many fine-grained events making the system hard to reason about
- Missing dead-letter handling causing silent data loss
- Synchronous request-reply disguised as async events

## Related Skills

- `domain-driven-design` — domain events emerge from DDD modeling
- `system-architecture` — event-driven is an architectural style choice
- `realtime-architecture` — real-time delivery of events to clients
