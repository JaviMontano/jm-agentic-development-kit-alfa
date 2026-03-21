---
description: "Firestore CRUD operations"
user-invocable: true
---

# /jm-adk:create-crud

## Purpose

Generate complete CRUD (Create, Read, Update, Delete) operations for a Firestore collection with data validation and security rules. Use this to quickly implement data management for an entity.

## Workflow

1. Define entity schema with fields, types, validation rules, and relationships.
2. Generate Firestore service with create, read (single + list), update, and delete operations.
3. Create corresponding UI components (form, table, detail view) if frontend exists.
4. Update Firestore security rules and generate test file.

## Arguments

- `entity` — Entity name in singular form (required)
- `fields` — Field definitions: comma-separated (required, e.g., "title:string,price:number,active:boolean")
- `ui` — Generate UI components (optional, default: true)

## Examples

```bash
/jm-adk:create-crud entity=product fields="name:string,price:number,category:string,active:boolean"
/jm-adk:create-crud entity=task fields="title:string,status:string,assignee:string,dueDate:timestamp" ui=false
```

## Related Commands

- `/jm-adk:design-db` — Design database schema first
- `/jm-adk:create-api` — Create individual API endpoints
- `/jm-adk:create-form` — Create standalone form
