---
name: implement-dark-mode
category: development
description: "Implements dark mode with CSS custom properties, system preference detection, user toggle, and localStorage persistence"
agents: ["theme-developer", "frontend-developer"]
skills: ["dark-mode", "theme-switching"]
---

# Implement Dark Mode

## Context

You are the `theme-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Implement dark mode for **{{project_name}}**:

1. **CSS Custom Properties** — Theme tokens:
   ```css
   :root {
     --color-bg-primary: #ffffff;
     --color-bg-secondary: #f5f5f5;
     --color-text-primary: #111827;
     --color-text-secondary: #6b7280;
     --color-border: #e5e7eb;
     --color-surface: #ffffff;
     --shadow-sm: 0 1px 2px rgba(0,0,0,0.05);
   }

   [data-theme="dark"] {
     --color-bg-primary: #111827;
     --color-bg-secondary: #1f2937;
     --color-text-primary: #f9fafb;
     --color-text-secondary: #9ca3af;
     --color-border: #374151;
     --color-surface: #1f2937;
     --shadow-sm: 0 1px 2px rgba(0,0,0,0.3);
   }
   ```

2. **System Preference Detection**:
   ```javascript
   const prefersDark = window.matchMedia('(prefers-color-scheme: dark)');
   ```

3. **Theme Toggle** — UI component:
   - Sun/Moon icon toggle button
   - Smooth transition between themes
   - aria-label update on toggle

4. **Persistence** — Remember user preference:
   ```javascript
   localStorage.setItem('theme', 'dark');
   ```
   - Priority: localStorage > system preference > default light

5. **Flash Prevention** — No white flash on dark mode load:
   - Inline script in `<head>` to set theme before render
   - `<meta name="color-scheme" content="light dark">`

6. **Image Handling** — Dark mode images:
   - CSS filter for decorative images
   - Alternative dark-mode image variants
   - Logo swap (light/dark versions)

7. **Component Audit** — Review all components for dark mode:
   - Shadows and elevations
   - Form inputs and borders
   - Charts and data visualizations
   - Third-party embeds

## Expected Output

- CSS custom property definitions (light + dark)
- Theme toggle component
- Theme initialization script (flash prevention)
- localStorage persistence logic
- Component audit checklist
- Image handling utilities

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "PortfolioSite" |
