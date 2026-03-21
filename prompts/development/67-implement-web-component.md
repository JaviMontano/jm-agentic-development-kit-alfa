---
name: implement-web-component
category: development
description: "Creates a native Web Component using Custom Elements, Shadow DOM, and HTML templates for framework-agnostic reuse"
agents: ["webcomponent-developer", "frontend-developer"]
skills: ["web-components", "custom-elements"]
---

# Implement Web Component

## Context

You are the `webcomponent-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a Web Component **{{component_tag}}** for **{{project_name}}**:

Component purpose:
```
{{component_purpose}}
```

1. **Custom Element Definition**:
   ```javascript
   class {{ClassName}} extends HTMLElement {
     static get observedAttributes() { return [{{attributes}}]; }

     constructor() {
       super();
       this.attachShadow({ mode: 'open' });
     }

     connectedCallback() { this.render(); }
     disconnectedCallback() { /* cleanup */ }
     attributeChangedCallback(name, oldVal, newVal) { this.render(); }

     render() {
       this.shadowRoot.innerHTML = `
         <style>${this.styles}</style>
         ${this.template}
       `;
     }
   }
   customElements.define('{{component_tag}}', {{ClassName}});
   ```

2. **Shadow DOM Styling** — Encapsulated styles:
   - CSS custom properties for theming (pierces shadow boundary)
   - `:host` selector for the element itself
   - `:host([variant="primary"])` for variants
   - `::slotted()` for projected content styling

3. **Slots** — Content projection:
   ```html
   <slot name="header"></slot>
   <slot></slot> <!-- default slot -->
   <slot name="footer"></slot>
   ```

4. **Properties & Attributes** — Reflected properties:
   - String attributes reflected to properties
   - Boolean attributes
   - Complex properties (objects/arrays) via JS only

5. **Events** — Custom events:
   ```javascript
   this.dispatchEvent(new CustomEvent('{{event_name}}', {
     detail: { /* payload */ },
     bubbles: true,
     composed: true  // crosses shadow boundary
   }));
   ```

6. **Framework Integration** — Usage in:
   - Vanilla HTML
   - React (event handling caveats)
   - Angular (CUSTOM_ELEMENTS_SCHEMA)

7. **Testing** — Web component testing with @open-wc/testing.

## Expected Output

- Complete Web Component class
- CSS with theming support
- Usage examples in HTML, React, Angular
- NPM package structure
- Unit tests
- Documentation

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "SharedUI" |
| `{{component_tag}}` | HTML tag name (must have hyphen) | "app-rating-stars" |
| `{{component_purpose}}` | What the component does | "A star rating input with 1-5 stars" |
