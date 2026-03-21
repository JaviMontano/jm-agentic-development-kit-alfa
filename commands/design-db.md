---
description: "Design database schema (Firestore/SQL)"
user-invocable: true
---

# /jm-adk:design-db

## Purpose

Design a database schema optimized for the target database engine (Firestore NoSQL or SQL). Use this to define data models, relationships, and access patterns before implementation.

## Workflow

1. Analyze domain entities, relationships, and access patterns from requirements.
2. Design schema with collections/tables, fields, indexes, and constraints.
3. Optimize for query patterns: denormalization strategy for NoSQL, normalization for SQL.
4. Generate schema documentation with ER diagram and migration scripts.

## Arguments

- `input` — Requirements or domain model (required)
- `engine` — Database engine: `firestore` | `postgres` | `mysql` | `sqlite` (optional, default: firestore)

## Examples

```bash
/jm-adk:design-db input="E-commerce with products, orders, and reviews"
/jm-adk:design-db input=./docs/domain-map.md engine=postgres
```

## Related Commands

- `/jm-adk:architect` — System architecture design
- `/jm-adk:create-crud` — Implement CRUD operations
- `/jm-adk:domain-map` — Domain model input
