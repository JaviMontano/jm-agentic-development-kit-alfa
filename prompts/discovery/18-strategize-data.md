---
name: strategize-data
category: discovery
description: "Designs a data strategy covering collection, storage, governance, analytics, and Firebase data architecture"
agents: ["data-strategist", "architect"]
skills: ["data-strategy", "firebase-architecture"]
---

# Strategize Data

## Context

You are the `data-strategist` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design a data strategy for **{{project_name}}**:

```
{{project_description}}
```

1. **Data Inventory** — Catalog all data the system will handle:
   | Data Entity | Source | Format | Volume | Velocity | Sensitivity |
   |-------------|--------|--------|--------|----------|-------------|

2. **Firestore Data Model** — Design the complete Firestore structure:
   - Collections and subcollections
   - Document schemas with field types
   - Denormalization strategy (what data to duplicate and why)
   - Reference strategy (document references vs. embedded)

3. **Indexing Strategy** — Define:
   - Single-field indexes (auto vs. exempt)
   - Composite indexes needed
   - Index limits and workarounds

4. **Data Flow Architecture** — Map how data flows:
   - Client → Firestore (direct writes)
   - Client → Cloud Functions → Firestore (validated writes)
   - Firestore triggers → Cloud Functions → external services
   - Real-time listeners vs. one-time reads

5. **Data Governance** — Define:
   - Data ownership per collection
   - Retention policies
   - Backup strategy (Firestore export schedules)
   - Data deletion procedures (GDPR right-to-erasure)

6. **Analytics Strategy** — What to measure:
   - Firebase Analytics custom events
   - BigQuery export setup (if needed)
   - Dashboard requirements

7. **Security Rules** — Draft Firestore security rules for the top 3 collections.

## Expected Output

- Data inventory table
- Firestore schema document (JSON examples)
- Data flow diagram (Mermaid)
- Governance policy document
- Firestore security rules code
- Analytics event catalog

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "CRMSystem" |
| `{{project_description}}` | Project and data description | "A CRM handling customer contacts…" |
