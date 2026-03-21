---
description: "Sortable filterable data table"
user-invocable: true
---

# /jm-adk:create-table

## Purpose

Generate a data table component with sorting, filtering, pagination, and responsive behavior. Use this to display structured data with interactive features.

## Workflow

1. Define table columns with data types, sortability, and filter options.
2. Generate table component with header sorting, column-specific filters, and search.
3. Implement pagination with configurable page size and navigation controls.
4. Add responsive behavior (horizontal scroll or card layout on mobile).

## Arguments

- `name` — Table component name (optional, default: DataTable)
- `columns` — Column definitions: comma-separated (required, e.g., "name:string:sortable,email:string:filterable")
- `pagination` — Rows per page (optional, default: 10)
- `source` — Data source: `firestore` | `api` | `static` (optional, default: firestore)

## Examples

```bash
/jm-adk:create-table columns="name:string:sortable,email:string,role:string:filterable,created:date:sortable"
/jm-adk:create-table name=OrderTable columns="id:string,customer:string:sortable,total:number:sortable,status:string:filterable"
```

## Related Commands

- `/jm-adk:create-dashboard` — Dashboard with tables and charts
- `/jm-adk:create-crud` — Full CRUD with table view
- `/jm-adk:create-component` — Create generic component
