---
name: create-component
category: development
description: "Creates a reusable UI component with props, events, slots, styling, and accessibility baked in"
agents: ["component-developer", "ui-developer"]
skills: ["component-creation", "reusable-ui"]
---

# Create Component

## Context

You are the `component-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create the **{{component_name}}** component for **{{project_name}}**:

Component requirements:
```
{{component_requirements}}
```

1. **Component Interface** — Define:
   ```
   Props/Inputs:
   - {{prop1}}: {{type}} (default: {{default}})
   - {{prop2}}: {{type}} (required)

   Events/Outputs:
   - on{{Event1}}: emits {{payload_type}}

   Slots/Children:
   - default: {{slot_description}}
   ```

2. **Component Code** — Generate for {{framework}}:
   - Template/JSX with semantic HTML
   - Scoped styles using design tokens (CSS custom properties)
   - Component logic (state, handlers, lifecycle)
   - TypeScript interfaces (if applicable)

3. **Variants** — Generate variants:
   - Size: small, medium, large
   - Theme: primary, secondary, ghost, danger
   - State: default, hover, active, disabled, loading

4. **Accessibility** — Implement:
   - Correct ARIA role
   - Keyboard interaction
   - Focus styling
   - Screen reader announcements

5. **Responsive** — Adapt to container/viewport.

6. **Usage Examples** — Show 3+ usage examples:
   ```html
   <!-- Basic usage -->
   <!-- With all props -->
   <!-- In a real-world context -->
   ```

7. **Testing** — Unit test outline with key assertions.

## Expected Output

- Complete component code
- CSS styles with variants
- Usage documentation with examples
- Unit test outline
- Storybook story (if applicable)

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "DesignSystem" |
| `{{component_name}}` | Name of the component | "Button" |
| `{{component_requirements}}` | What the component does | "A button with icon support…" |
| `{{framework}}` | Framework | "react", "angular", or "vanilla" |
