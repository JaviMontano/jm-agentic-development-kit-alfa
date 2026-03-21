---
name: implement-i18n
category: development
description: "Implements internationalization with language detection, translation files, RTL support, and locale-aware formatting"
agents: ["i18n-developer", "frontend-developer"]
skills: ["internationalization", "localization"]
---

# Implement Internationalization

## Context

You are the `i18n-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Implement i18n for **{{project_name}}** supporting **{{languages}}**:

1. **Translation Files** — JSON structure:
   ```json
   // en.json
   {
     "common": {
       "save": "Save",
       "cancel": "Cancel",
       "loading": "Loading..."
     },
     "auth": {
       "login": "Log In",
       "register": "Create Account"
     }
   }
   ```

2. **i18n Service** — Translation engine:
   ```javascript
   class I18n {
     constructor(locale, translations) { ... }
     t(key, params = {}) { ... }  // Get translation with interpolation
     setLocale(locale) { ... }     // Switch language
     getLocale() { ... }
   }
   ```
   - Key-based lookups with dot notation
   - Interpolation: `t('greeting', { name: 'John' })` → "Hello, John"
   - Pluralization: `t('items', { count: 5 })` → "5 items"
   - Fallback to default language if key missing

3. **Language Switcher** — UI component:
   - Dropdown or flag buttons
   - Persist choice in localStorage
   - Update `<html lang="...">` attribute

4. **Language Detection** — Priority:
   - URL parameter (?lang=es)
   - localStorage
   - Browser navigator.language
   - Default: {{default_language}}

5. **Date/Number Formatting** — Locale-aware:
   ```javascript
   new Intl.DateTimeFormat(locale).format(date);
   new Intl.NumberFormat(locale, { style: 'currency', currency }).format(amount);
   ```

6. **RTL Support** — If supporting RTL languages:
   - `dir="rtl"` on `<html>`
   - CSS logical properties (margin-inline-start vs margin-left)
   - Mirrored layouts

7. **Firestore Integration** — Multilingual content:
   - Content stored with language suffix or subcollections
   - User language preference in profile

## Expected Output

- Translation JSON files per language
- i18n service with t() function
- Language switcher component
- Date/number formatting utilities
- RTL CSS adjustments
- Firestore multilingual content strategy

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "GlobalApp" |
| `{{languages}}` | Languages to support | "en, es, pt, fr" |
| `{{default_language}}` | Default language | "en" |
