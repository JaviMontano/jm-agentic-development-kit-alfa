---
name: plan-migration
category: architecture
description: "Creates a detailed migration plan for moving from a legacy system to the new Firebase-based architecture"
agents: ["migration-planner", "data-architect"]
skills: ["migration-planning", "data-migration"]
---

# Plan Migration

## Context

You are the `migration-planner` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a migration plan from **{{source_system}}** to the new Firebase-based system for **{{project_name}}**:

Current state:
```
{{current_state}}
```

Target state:
```
{{target_state}}
```

1. **Migration Strategy** — Choose and justify:
   - Big Bang (all at once)
   - Phased (feature by feature)
   - Parallel Run (both systems simultaneously)
   - Strangler Fig (gradual replacement)

2. **Data Migration Plan** — For each data entity:
   | Source | Target | Transformation | Volume | Strategy |
   |--------|--------|---------------|--------|----------|
   - ETL scripts (extract, transform, load)
   - Data validation rules
   - Rollback procedure

3. **Schema Mapping** — Source schema to Firestore schema:
   - Field mapping table
   - Type conversions
   - Relationship to denormalization conversion
   - ID strategy (preserve old IDs vs. new Firestore IDs)

4. **Feature Migration Order** — Sequence of features to migrate:
   - Dependencies between features
   - Risk level per feature
   - Fallback plan per feature

5. **Cutover Plan** — The actual switch:
   - Pre-cutover checklist
   - Cutover steps (minute-by-minute)
   - Smoke tests
   - Rollback trigger criteria
   - Communication plan

6. **Testing Strategy** — Migration-specific testing:
   - Data integrity verification
   - Feature parity testing
   - Performance comparison
   - User acceptance testing

7. **Risk Register** — Migration-specific risks and mitigations.

## Expected Output

- Migration strategy document
- Data migration scripts outline
- Schema mapping table
- Feature migration sequence
- Cutover runbook
- Testing plan
- Risk register

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "LegacyModernization" |
| `{{source_system}}` | Current system description | "MySQL + PHP monolith on shared hosting" |
| `{{current_state}}` | Current architecture details | "WordPress with custom plugins…" |
| `{{target_state}}` | Target architecture | "Angular SPA + Firebase" |
