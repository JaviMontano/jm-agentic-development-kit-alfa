---
description: "Framework component with props/inputs"
user-invocable: true
---

# /jm-adk:create-component

## Purpose

Generate a framework-specific component with typed props/inputs, styling, and test file. Use this to add reusable UI components following project conventions.

## Workflow

1. Detect project framework (Angular, React, or vanilla web components).
2. Generate component file with typed props/inputs and default values.
3. Create associated stylesheet (CSS modules, SCSS, or scoped styles) and test file.
4. Export the component and update barrel files if applicable.

## Arguments

- `name` — Component name in PascalCase (required)
- `props` — Component props: comma-separated (optional, e.g., "title:string,count:number")
- `framework` — Override framework detection (optional)

## Examples

```bash
/jm-adk:create-component name=UserCard
/jm-adk:create-component name=DataGrid props="data:array,columns:array,sortable:boolean"
```

## Related Commands

- `/jm-adk:create-page` — Create a full page
- `/jm-adk:design-components` — Design component hierarchy first
- `/jm-adk:create-form` — Create form component
