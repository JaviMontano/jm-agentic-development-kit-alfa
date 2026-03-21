---
name: validate-html
category: quality
description: "Validates HTML markup for W3C compliance, semantic correctness, and best practices"
agents: ["html-validator", "quality-analyst"]
skills: ["html-validation", "semantic-html"]
---

# Validate HTML

## Context

You are the `html-validator` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Validate the HTML for **{{project_name}}**:

```html
{{html_code}}
```

1. **W3C Validation** — Check against HTML5 standard:
   - Missing required attributes
   - Invalid nesting (e.g., `<p>` inside `<p>`)
   - Deprecated elements/attributes
   - Unclosed tags
   - Duplicate IDs

2. **Semantic HTML Audit**:
   - Correct use of landmarks (`<header>`, `<nav>`, `<main>`, `<footer>`, `<aside>`)
   - Heading hierarchy (`<h1>` → `<h2>` → `<h3>`, no skipped levels)
   - Lists for list content (`<ul>`, `<ol>`, `<dl>`)
   - `<button>` for actions, `<a>` for navigation
   - `<table>` for tabular data (not layout)
   - `<figure>` and `<figcaption>` for images
   - `<time>` for dates

3. **Document Structure**:
   - DOCTYPE declaration
   - `<html lang>` attribute
   - `<meta charset="utf-8">`
   - `<meta viewport>` for responsive
   - `<title>` present and meaningful

4. **Form Validation**:
   - Labels associated with inputs
   - Fieldsets and legends for groups
   - Input types appropriate (email, tel, url, number)
   - Required attributes present
   - Autocomplete attributes set

5. **Media Elements**:
   - `<img>` alt text (meaningful, not "image of…")
   - `<video>`/`<audio>` with controls and captions
   - `<svg>` with title and role

6. **Fixes** — For each issue:
   | Line | Issue | Severity | Fix |
   |------|-------|----------|-----|

## Expected Output

- Validation error/warning list with line numbers
- Semantic HTML recommendations
- Document structure checklist
- Form validation checklist
- Corrected HTML code
- Summary of changes

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "WebPage" |
| `{{html_code}}` | HTML to validate | "<!DOCTYPE html>…" |
