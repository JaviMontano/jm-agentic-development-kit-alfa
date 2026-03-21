---
name: model-database
category: architecture
description: "Designs the complete Firestore database schema with collections, documents, indexes, and security rules"
agents: ["data-architect", "firebase-specialist"]
skills: ["firestore-modeling", "nosql-design"]
---

# Model Database

## Context

You are the `data-architect` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design the Firestore database schema for **{{project_name}}**:

Entities:
```
{{entities}}
```

Relationships:
```
{{relationships}}
```

1. **Collection Design** — For each entity:
   - Collection path (including subcollections)
   - Document structure with field names, types, and constraints
   - Example document (JSON)
   - Document size estimate

2. **Denormalization Strategy** — Identify data that should be duplicated:
   - What to denormalize and where
   - Consistency update strategy (Cloud Functions triggers)
   - Trade-offs documented

3. **Query Patterns** — For each screen/feature:
   - Firestore query needed
   - Fields used in where/orderBy
   - Pagination strategy (cursor-based with `startAfter`)

4. **Index Requirements** — List all composite indexes:
   ```json
   {
     "collectionGroup": "orders",
     "fields": [
       { "fieldPath": "status", "order": "ASCENDING" },
       { "fieldPath": "createdAt", "order": "DESCENDING" }
     ]
   }
   ```

5. **Security Rules** — Complete `firestore.rules` file:
   ```
   rules_version = '2';
   service cloud.firestore {
     match /databases/{database}/documents {
       // Rules here
     }
   }
   ```

6. **Data Migration** — If migrating from an existing database, outline the migration plan.

7. **Backup Strategy** — Scheduled exports, retention period, restore procedure.

## Expected Output

- Collection/document schema catalog
- Example documents (JSON)
- Composite index definitions (firestore.indexes.json)
- Complete firestore.rules file
- Query pattern reference
- Denormalization map

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "BookingSystem" |
| `{{entities}}` | List of data entities | "Users, Bookings, Rooms, Payments" |
| `{{relationships}}` | Entity relationships | "User has many Bookings, Booking belongs to Room" |
