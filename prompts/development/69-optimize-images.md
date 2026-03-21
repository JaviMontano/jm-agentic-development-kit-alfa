---
name: optimize-images
category: development
description: "Implements an image optimization pipeline with format conversion, responsive sizing, lazy loading, and CDN delivery"
agents: ["image-optimizer", "performance-developer"]
skills: ["image-optimization", "responsive-images"]
---

# Optimize Images

## Context

You are the `image-optimizer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Implement image optimization for **{{project_name}}**:

1. **Format Strategy** — Modern formats with fallbacks:
   ```html
   <picture>
     <source srcset="image.avif" type="image/avif">
     <source srcset="image.webp" type="image/webp">
     <img src="image.jpg" alt="..." loading="lazy">
   </picture>
   ```

2. **Responsive Images** — Size adaptation:
   ```html
   <img
     srcset="image-320w.webp 320w, image-640w.webp 640w, image-1280w.webp 1280w"
     sizes="(max-width: 600px) 100vw, (max-width: 1200px) 50vw, 33vw"
     src="image-640w.webp"
     alt="..."
   >
   ```

3. **Build-Time Optimization** — Automation:
   - Sharp.js script for batch conversion
   - Generate WebP + AVIF from source images
   - Multiple sizes per image (320, 640, 960, 1280, 1920)
   - Quality settings (WebP: 80, AVIF: 65, JPEG: 85)
   - Strip metadata (EXIF) for privacy

4. **Upload-Time Optimization** — Firebase Storage:
   - Cloud Function triggered on upload
   - Resize to predefined sizes
   - Convert to WebP
   - Generate thumbnail (150x150)
   - Store variants in predictable paths

5. **Lazy Loading** — Defer off-screen images:
   - Native `loading="lazy"`
   - LQIP (Low Quality Image Placeholder)
   - Blur-up effect with CSS transition

6. **CSS Background Images** — Optimize:
   ```css
   .hero {
     background-image: image-set(
       url("hero.avif") type("image/avif"),
       url("hero.webp") type("image/webp"),
       url("hero.jpg") type("image/jpeg")
     );
   }
   ```

7. **Performance Metrics** — Track improvement:
   - Total image weight before/after
   - LCP impact measurement
   - Lighthouse score improvement

## Expected Output

- Image optimization build script
- Cloud Function for upload-time optimization
- Responsive image helper component
- Lazy loading utility
- CSS image optimization patterns
- Performance measurement guide

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "PhotoGallery" |
