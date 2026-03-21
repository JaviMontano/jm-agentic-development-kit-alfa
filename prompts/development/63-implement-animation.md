---
name: implement-animation
category: development
description: "Implements CSS and JavaScript animations including scroll reveals, page transitions, micro-interactions, and loading animations"
agents: ["animation-developer", "frontend-developer"]
skills: ["css-animation", "motion-design"]
---

# Implement Animations

## Context

You are the `animation-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Implement animations for **{{project_name}}**:

Animation needs:
```
{{animation_requirements}}
```

1. **Scroll Reveal Animations** — Elements animate as they enter viewport:
   ```javascript
   const observer = new IntersectionObserver((entries) => {
     entries.forEach(entry => {
       if (entry.isIntersecting) {
         entry.target.classList.add('revealed');
         observer.unobserve(entry.target);
       }
     });
   }, { threshold: 0.1 });
   ```
   - Fade in, slide up, scale in variants
   - Staggered timing for lists
   - CSS: `@keyframes` + `animation` properties

2. **Page Transitions** — Route change animations:
   - Fade transition
   - Slide transition
   - Cross-fade

3. **Micro-interactions** — Subtle feedback:
   - Button hover/press effects
   - Toggle switches
   - Checkbox/radio animations
   - Form field focus animations
   - Ripple effects

4. **Loading Animations** — Branded loaders:
   - Spinner (CSS-only)
   - Skeleton screens
   - Progress bar
   - Pulsing dots

5. **Motion Tokens** — Consistent timing:
   ```css
   :root {
     --duration-fast: 150ms;
     --duration-normal: 300ms;
     --duration-slow: 500ms;
     --ease-in-out: cubic-bezier(0.4, 0, 0.2, 1);
     --ease-out: cubic-bezier(0, 0, 0.2, 1);
     --ease-in: cubic-bezier(0.4, 0, 1, 1);
   }
   ```

6. **Reduced Motion** — Respect user preferences:
   ```css
   @media (prefers-reduced-motion: reduce) {
     *, *::before, *::after {
       animation-duration: 0.01ms !important;
       transition-duration: 0.01ms !important;
     }
   }
   ```

7. **Performance** — Animation best practices:
   - Only animate `transform` and `opacity`
   - Use `will-change` sparingly
   - Avoid layout thrashing

## Expected Output

- Scroll reveal utility (JS + CSS)
- Page transition CSS
- Micro-interaction CSS library
- Loading animation components
- Motion tokens
- Reduced motion overrides
- Performance guidelines

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "CreativePortfolio" |
| `{{animation_requirements}}` | What needs animation | "Scroll reveals, button interactions, page transitions" |
