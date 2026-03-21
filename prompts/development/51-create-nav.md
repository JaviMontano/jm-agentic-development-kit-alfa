---
name: create-nav
category: development
description: "Creates a responsive navigation component with mobile hamburger menu, dropdowns, and active state tracking"
agents: ["nav-developer", "ui-developer"]
skills: ["navigation-ui", "responsive-menu"]
---

# Create Navigation

## Context

You are the `nav-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create navigation for **{{project_name}}** using **{{framework}}**:

Navigation items:
```
{{nav_items}}
```

1. **Desktop Navigation** — Top bar or sidebar:
   - Logo/brand link
   - Navigation links with active state
   - Dropdown menus (if nested items)
   - User avatar menu (profile, settings, logout)
   - Notification bell (if applicable)

2. **Mobile Navigation** — Responsive adaptation:
   - Hamburger menu toggle
   - Slide-in or full-screen menu
   - Smooth open/close animation
   - Close on link click
   - Close on backdrop click
   - Close on Escape key
   - Body scroll lock when open

3. **Auth-Aware** — Show/hide items based on auth:
   - Logged out: Login, Register
   - Logged in: Dashboard, Profile, Logout
   - Role-based: Admin link only for admins

4. **Active State** — Highlight current route:
   - CSS class on active link
   - aria-current="page" on active link

5. **Accessibility** — Full keyboard/screen reader support:
   - `<nav>` landmark with aria-label
   - Mobile menu: aria-expanded, aria-controls
   - Focus trap in mobile menu
   - Skip-to-content link

6. **Sticky/Scroll Behavior** — Choose:
   - Fixed header with scroll shadow
   - Hide on scroll down, show on scroll up
   - Transparent → solid on scroll

7. **CSS** — Styles using design tokens:
   - Transition animations
   - Hover/focus states
   - Z-index management

## Expected Output

- Navigation component code (HTML + CSS + JS)
- Mobile menu implementation
- Auth-aware logic
- Accessibility features
- CSS animations
- Usage example

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "WebApp" |
| `{{framework}}` | Frontend framework | "vanilla" |
| `{{nav_items}}` | Navigation structure | "Home, Products (sub: Category A, B), About, Contact" |
| `{{nav_style}}` | Navigation style | "top-bar" or "sidebar" |
