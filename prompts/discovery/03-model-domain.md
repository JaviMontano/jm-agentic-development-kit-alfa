---
name: model-domain
category: discovery
description: "Creates a domain model with entities, relationships, aggregates, and bounded contexts using DDD principles"
agents: ["domain-modeler", "architect"]
skills: ["domain-driven-design", "entity-modeling"]
---

# Model Domain

## Context

You are the `domain-modeler` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

For the project **{{project_name}}** in the **{{domain}}** domain, create a comprehensive domain model.

Input context:
```
{{business_description}}
```

1. **Ubiquitous Language Glossary** — Define every domain term precisely. Include synonyms stakeholders might use and the canonical term you will adopt.

2. **Entities & Value Objects** — List each entity (has identity) and value object (identity-less). For each:
   - Name
   - Key attributes with types
   - Business rules / invariants
   - Lifecycle states (if applicable)

3. **Aggregates** — Group entities into aggregates. Identify the aggregate root. Explain consistency boundaries.

4. **Bounded Contexts** — Identify each bounded context. Map how contexts relate (Shared Kernel, Customer/Supplier, Anti-Corruption Layer, etc.).

5. **Firestore Collection Design** — Translate each aggregate into a proposed Firestore collection/subcollection structure. Include:
   - Collection path
   - Document schema (JSON example)
   - Indexing needs
   - Security rule considerations

6. **Domain Events** — List the key domain events (e.g., `OrderPlaced`, `PaymentReceived`). For each, state the trigger and the data payload.

## Expected Output

- Glossary table
- Entity/Value Object catalog
- Aggregate diagram (text-based)
- Bounded context map (text-based)
- Firestore collection schemas in JSON
- Domain event catalog

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "InventorySystem" |
| `{{domain}}` | Business domain | "Supply Chain" |
| `{{business_description}}` | Narrative describing the business processes | "The company manages warehouses…" |
