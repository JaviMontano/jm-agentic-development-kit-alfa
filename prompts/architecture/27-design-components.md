---
name: design-components
category: architecture
description: "Designs a component architecture with hierarchy, props/inputs, composition patterns, and a component library structure"
agents: ["component-architect", "ui-designer"]
skills: ["component-design", "design-system"]
---

# Design Components

## Context

You are the `component-architect` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design the component architecture for **{{project_name}}** using **{{framework}}**:

UI requirements:
```
{{ui_requirements}}
```

1. **Component Hierarchy** — Tree structure of all components:
   ```
   App
   ├── Layout
   │   ├── Header
   │   ├── Sidebar
   │   └── Footer
   ├── Pages
   │   ├── HomePage
   │   └── DashboardPage
   └── Shared
       ├── Button
       └── Card
   ```

2. **Component Catalog** — For each component:
   - Name and file path
   - Category: Layout, Page, Feature, Shared/UI
   - Props/Inputs with types and defaults
   - Events/Outputs emitted
   - Slots/Children expected
   - State: Stateful or Stateless
   - Dependencies

3. **Composition Patterns** — Document patterns used:
   - Container/Presentational
   - Compound components
   - Render props / Higher-order components (React)
   - Content projection / ng-content (Angular)

4. **Shared Component Library** — Reusable UI primitives:
   - Button variants (primary, secondary, ghost, danger)
   - Input components (text, select, checkbox, radio, date)
   - Feedback (toast, alert, modal, spinner)
   - Data display (table, card, list, badge)

5. **Naming Convention** — File naming, component naming, CSS class naming.

6. **Lazy Loading Plan** — Which components/pages to lazy load and route-based code splitting.

7. **Storybook Stories** — For each shared component, a story outline.

## Expected Output

- Component tree diagram
- Component catalog table
- Props/Inputs specification per component
- Composition pattern documentation
- Naming convention guide
- Lazy loading configuration
- Storybook story outlines

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "AdminPanel" |
| `{{framework}}` | Frontend framework | "Angular" |
| `{{ui_requirements}}` | UI/UX requirements | "Dashboard with charts, user management…" |
