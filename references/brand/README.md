# MetodologIA Brand Design System

Canonical design tokens and HTML template for all JM-ADK generated outputs.

## Files

| File | Purpose |
|------|---------|
| `design-tokens.json` | Colors, typography, effects, layout values |
| `html-template.html` | Base HTML with CSS variables, Swiss grid, glassmorphism |

## Palette

| Token | Value | Use |
|-------|-------|-----|
| `--navy` | #0A122A | Primary background |
| `--surface` | #1E293B | Card/panel surfaces |
| `--gold` | #FFD700 | Primary accent, headings, borders |
| `--cyan` | #137DC5 | Secondary accent, links |
| `--lavender` | #BBA0CC | Tertiary accent |
| `--text` | #FFFFFF | Primary text |
| `--text-muted` | #94A3B8 | Secondary text |

## Typography

- **Poppins** — Headings (600-800 weight)
- **Montserrat** — Body text (300-600 weight)
- **JetBrains Mono** — Code, metadata, technical labels

## Usage

Any skill that generates HTML MUST:
1. Read `references/brand/design-tokens.json` for token values
2. Use `references/brand/html-template.html` as base template
3. Replace `{{TITLE}}`, `{{SUBTITLE}}`, `{{CONTENT}}`, `{{DATE}}`
4. Never use raw hex colors — always reference CSS variables
5. Never use inline font declarations — always use the token fonts

## Source

Aesthetic derived from:
- Manifiesto Deontologico (blueprint grid, navy + gold)
- B2B Corporate Dossier (glassmorphism, Poppins/Montserrat)
- MetodologIA Brand Voice v3.0 (Neo-Swiss Clean)
