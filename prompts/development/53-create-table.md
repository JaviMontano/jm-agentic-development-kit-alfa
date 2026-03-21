---
name: create-table
category: development
description: "Creates a data table component with sorting, filtering, pagination, and Firestore data source integration"
agents: ["table-developer", "data-display-developer"]
skills: ["data-table", "pagination"]
---

# Create Data Table

## Context

You are the `table-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a data table for **{{project_name}}** displaying **{{data_entity}}** data:

Columns:
```
{{columns}}
```

1. **Table Structure** — Semantic HTML table:
   ```html
   <table>
     <thead><tr><th scope="col">...</th></tr></thead>
     <tbody><tr><td>...</td></tr></tbody>
   </table>
   ```
   - Caption for screen readers
   - Responsive: horizontal scroll or card layout on mobile

2. **Sorting** — Column sorting:
   - Click header to sort (asc → desc → none)
   - Sort indicator (arrow icon)
   - aria-sort attribute
   - Firestore orderBy integration

3. **Filtering** — Data filtering:
   - Search input (debounced, 300ms)
   - Column-specific filters
   - Active filter indicators
   - Clear all filters button

4. **Pagination** — Cursor-based pagination:
   ```javascript
   // Firestore cursor pagination
   const nextPage = query(
     collection(db, '{{collection}}'),
     orderBy('createdAt'),
     startAfter(lastDoc),
     limit(pageSize)
   );
   ```
   - Page size selector (10, 25, 50)
   - Previous/Next buttons
   - Current page indicator
   - Total count display

5. **Row Actions** — Per-row operations:
   - View, Edit, Delete buttons
   - Row click to expand/navigate
   - Bulk selection (checkboxes)
   - Bulk actions (delete selected, export selected)

6. **Loading States** — Skeleton rows during fetch.

7. **Empty State** — No data message with illustration.

8. **Export** — Download as CSV.

## Expected Output

- Table component code
- Sorting logic
- Firestore pagination service
- Filter components
- CSS (responsive)
- Export utility
- Usage examples

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "UserAdmin" |
| `{{data_entity}}` | What data the table shows | "Users" |
| `{{columns}}` | Column definitions | "Name (sortable), Email (sortable), Role (filterable), Created (sortable), Actions" |
| `{{collection}}` | Firestore collection | "users" |
