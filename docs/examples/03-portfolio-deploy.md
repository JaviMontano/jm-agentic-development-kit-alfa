# Example: Portfolio Site on Hostinger

Build and deploy a personal portfolio to Hostinger shared hosting — no Firebase, no build step.

## The Request

```bash
/jm-adk:express input="Create a developer portfolio with projects showcase,
about section, and contact form. Deploy to Hostinger."
```

The `/jm-adk:express` command skips the full analysis pipeline and goes straight to development — ideal for well-defined, straightforward projects.

## What Gets Generated

**Agent**: `frontend-craftsman` + `hostinger-expert`

### Project Structure

```
portfolio/
├── index.html              # Single-page portfolio
├── css/
│   └── styles.css          # All styles (< 15KB)
├── js/
│   └── main.js             # Interactions (< 5KB)
├── assets/
│   ├── projects/           # Project screenshots
│   └── profile.webp        # Profile photo
├── .htaccess               # Caching, security, SPA routing
└── robots.txt              # SEO
```

### `index.html` — Semantic, Accessible, SEO-Ready

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Developer portfolio — web apps, Firebase, and modern frontend">
  <title>Your Name — Developer Portfolio</title>

  <!-- Preload critical assets -->
  <link rel="preload" href="/css/styles.css" as="style">
  <link rel="preload" href="/assets/profile.webp" as="image">

  <link rel="stylesheet" href="/css/styles.css">

  <!-- Structured data for SEO -->
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "Person",
    "name": "Your Name",
    "jobTitle": "Web Developer",
    "url": "https://yourdomain.com",
    "sameAs": [
      "https://github.com/yourusername",
      "https://linkedin.com/in/yourusername"
    ]
  }
  </script>
</head>
<body>
  <!-- Skip link for accessibility -->
  <a href="#main" class="skip-link">Skip to content</a>

  <header role="banner">
    <nav role="navigation" aria-label="Main navigation">
      <ul>
        <li><a href="#about">About</a></li>
        <li><a href="#projects">Projects</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>
    </nav>
  </header>

  <main id="main" role="main">
    <!-- Hero -->
    <section id="hero" aria-labelledby="hero-title">
      <h1 id="hero-title">Hi, I'm <strong>Your Name</strong></h1>
      <p>I build web applications with Firebase, modern CSS, and vanilla JavaScript.</p>
    </section>

    <!-- About -->
    <section id="about" aria-labelledby="about-title">
      <h2 id="about-title">About</h2>
      <img src="/assets/profile.webp" alt="Your Name" width="200" height="200" loading="lazy">
      <p>Brief bio here.</p>
    </section>

    <!-- Projects -->
    <section id="projects" aria-labelledby="projects-title">
      <h2 id="projects-title">Projects</h2>
      <ul class="project-grid" role="list">
        <li class="project-card">
          <img src="/assets/projects/project-1.webp" alt="Screenshot of Project 1"
               width="400" height="300" loading="lazy">
          <h3>Project 1</h3>
          <p>Description of what it does and what stack was used.</p>
          <a href="https://project1.com" target="_blank" rel="noopener">Live Demo</a>
          <a href="https://github.com/you/project1" target="_blank" rel="noopener">Source</a>
        </li>
        <!-- More project cards -->
      </ul>
    </section>

    <!-- Contact -->
    <section id="contact" aria-labelledby="contact-title">
      <h2 id="contact-title">Contact</h2>
      <form action="https://formspree.io/f/YOUR_ID" method="POST">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required autocomplete="name">

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required autocomplete="email">

        <label for="message">Message</label>
        <textarea id="message" name="message" rows="5" required></textarea>

        <button type="submit">Send Message</button>
      </form>
    </section>
  </main>

  <footer role="contentinfo">
    <p>&copy; 2026 Your Name. Made with Claude Code and Tons of Love.</p>
  </footer>

  <script src="/js/main.js" defer></script>
</body>
</html>
```

**Key decisions** [INFERENCE]:
- **No build step** — deploys directly to Hostinger
- **Formspree** for contact form — no backend needed
- **WebP images** with lazy loading
- **Structured data** for Google Knowledge Panel
- **Skip link** for screen reader navigation

### Quality Report

```bash
/jm-adk:review
```

```
G0: Security ✅ — No secrets, rel="noopener" on external links
G1: Evidence ✅ — All claims tagged
G2: Lighthouse ✅
  - Performance: 98 (< 20KB total, no dependencies)
  - Accessibility: 100 (skip link, ARIA, semantic HTML, labels)
  - SEO: 100 (meta, structured data, robots.txt)
  - Best Practices: 100 (HTTPS, CSP-ready)
G3: Deployment ✅ — Pure HTML/CSS/JS, Hostinger compatible
```

### Deploy to Hostinger

```bash
/jm-adk:ship target=hostinger
```

The agent generates upload instructions:

```
=== Hostinger Deployment ===

1. Open Hostinger File Manager (or SFTP client)
2. Navigate to /public_html/
3. Upload all files from portfolio/:
   - index.html
   - css/styles.css
   - js/main.js
   - assets/ (all contents)
   - .htaccess
   - robots.txt

4. Verify SSL is enabled:
   Hostinger → SSL → your domain → Install

5. Test: https://yourdomain.com

Post-deploy checklist:
  □ Site loads over HTTPS
  □ Contact form submits (check Formspree dashboard)
  □ Images load correctly
  □ Mobile layout works (test at 320px, 768px)
  □ Lighthouse audit passes (run in Chrome DevTools)
```

## Why This Example Matters

This demonstrates:
- **Hostinger-first**: No server runtime, no build step, pure HTML/CSS/JS
- **Progressive enhancement**: Works without JavaScript (form submits via Formspree)
- **Accessibility first**: Skip link, ARIA, semantic elements, labels
- **Performance**: < 20KB total, preloads, lazy loading
- **SEO**: Meta tags, structured data, semantic HTML
- **Zero cost**: Hostinger basic plan + free SSL + Formspree free tier

A developer portfolio that scores 98-100 on all Lighthouse categories, deployed in under a minute.

---

*Made with Claude Code and Tons of Love with the Help of Pristino Agent*
