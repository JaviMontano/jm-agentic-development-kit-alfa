---
name: design-responsive
category: architecture
description: "Designs a responsive layout strategy with breakpoints, grid system, and mobile-first component adaptations"
agents: ["responsive-designer", "css-architect"]
skills: ["responsive-design", "css-architecture"]
---

# Design Responsive Layout

## Context

You are the `responsive-designer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design the responsive strategy for **{{project_name}}**:

Target devices: {{target_devices}}

1. **Breakpoint System** — Define breakpoints:
   ```css
   /* Mobile First */
   --bp-sm: 576px;   /* Small devices */
   --bp-md: 768px;   /* Tablets */
   --bp-lg: 992px;   /* Desktops */
   --bp-xl: 1200px;  /* Large desktops */
   --bp-xxl: 1400px; /* Extra large */
   ```

2. **Grid System** — Define the layout grid:
   - Column count per breakpoint
   - Gutter widths
   - Container max-widths
   - CSS Grid vs Flexbox decision per layout

3. **Layout Patterns** — For each page, specify behavior at each breakpoint:
   | Page | Mobile | Tablet | Desktop |
   |------|--------|--------|---------|
   | Dashboard | Stack cards | 2-col grid | 3-col + sidebar |

4. **Navigation Adaptation** — How nav changes:
   - Mobile: Hamburger menu / bottom nav
   - Tablet: Collapsible sidebar
   - Desktop: Full sidebar or top nav

5. **Typography Scale** — Fluid typography using clamp():
   ```css
   --fs-h1: clamp(1.75rem, 4vw, 3rem);
   ```

6. **Image Strategy** — Responsive images:
   - `<picture>` with srcset
   - Lazy loading
   - Aspect ratio preservation
   - WebP with fallbacks

7. **Touch Targets** — Minimum 44x44px touch targets on mobile. Identify components needing adaptation.

8. **Testing Matrix** — Devices and browsers to test:
   | Device | OS | Browser | Breakpoint |
   |--------|-----|---------|------------|

## Expected Output

- Breakpoint system CSS custom properties
- Grid system CSS code
- Per-page responsive behavior table
- Navigation adaptation specification
- Typography scale
- Image strategy code examples
- Testing matrix

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "EcommerceSite" |
| `{{target_devices}}` | Priority devices | "iPhone 14, iPad, Desktop 1920px" |
