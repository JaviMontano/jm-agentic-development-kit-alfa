---
name: optimize-fonts
category: development
description: "Optimizes web font loading with subsetting, preloading, font-display strategies, and fallback font matching"
agents: ["font-optimizer", "performance-developer"]
skills: ["font-optimization", "web-fonts"]
---

# Optimize Fonts

## Context

You are the `font-optimizer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Optimize font loading for **{{project_name}}** using fonts: **{{font_families}}**:

1. **Font Loading Strategy** — Choose and implement:
   ```css
   @font-face {
     font-family: '{{primary_font}}';
     src: url('/fonts/{{primary_font}}.woff2') format('woff2');
     font-weight: 400;
     font-style: normal;
     font-display: swap; /* or optional, fallback */
   }
   ```

2. **Preloading** — Critical fonts:
   ```html
   <link rel="preload" href="/fonts/primary-400.woff2" as="font" type="font/woff2" crossorigin>
   ```
   - Only preload above-the-fold font weights
   - Max 2-3 font files preloaded

3. **Subsetting** — Reduce font file size:
   - Subset to needed character ranges (Latin, Latin Extended)
   - Remove unused glyphs
   - Tool: `glyphhanger` or `pyftsubset`
   - Before/after file size comparison

4. **Fallback Font Matching** — Reduce layout shift (CLS):
   ```css
   @font-face {
     font-family: 'Fallback';
     src: local('Arial');
     ascent-override: 90%;
     descent-override: 20%;
     line-gap-override: 0%;
     size-adjust: 105%;
   }
   body { font-family: '{{primary_font}}', 'Fallback', sans-serif; }
   ```

5. **Variable Fonts** — If applicable:
   - Single file for all weights/styles
   - `font-variation-settings` for fine-tuning
   - Significant size savings over multiple static files

6. **Self-Hosting vs CDN** — Decision:
   - Self-host: full control, no external requests, cache with immutable headers
   - Google Fonts CDN: convenience, cache sharing (diminished with partitioned cache)
   - Recommendation: self-host for performance

7. **Font File Formats** — Priority:
   - WOFF2 (best compression, wide support)
   - WOFF (fallback for older browsers)
   - No TTF/OTF/EOT needed for modern browsers

8. **Performance Budget** — Font-specific:
   - Total font weight target: < 100KB
   - Max font files: 4-6
   - Max font families: 2

## Expected Output

- @font-face declarations
- Preload link tags
- Subsetting script/commands
- Fallback font override CSS
- Font loading strategy implementation
- Performance measurement guide

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "CorporateSite" |
| `{{font_families}}` | Fonts used in the project | "Inter, JetBrains Mono" |
| `{{primary_font}}` | Primary body font | "Inter" |
