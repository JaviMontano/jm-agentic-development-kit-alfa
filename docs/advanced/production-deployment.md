# Production Deployment Guide

Taking your JM-ADK project from development to production.

## Deployment Targets

JM-ADK supports two primary deployment targets:

| Target | Best For | Limitations |
|--------|----------|------------|
| **Firebase Hosting** | SPAs, PWAs, apps with Cloud Functions | Requires Firebase Blaze plan for functions |
| **Hostinger** | Static sites, landing pages, portfolios | No server-side runtime (PHP available) |

## Pre-Deployment Checklist

Run the full quality gate sequence before deploying:

```bash
/jm-adk:review          # Code review + evidence audit
/jm-adk:audit-perf      # Lighthouse performance (target: > 90)
/jm-adk:audit-a11y      # Accessibility audit (target: > 95, WCAG 2.1 AA)
/jm-adk:audit-security  # Security scan (no exposed secrets)
```

### Gate Summary

| Gate | What It Checks | Threshold |
|------|---------------|-----------|
| **G0: Security** | No API keys in code, no XSS vectors, CSP headers | Pass/Fail |
| **G1: Evidence** | All claims tagged, Constitution compliance | All claims tagged |
| **G2: Lighthouse** | Performance > 90, Accessibility > 95, Best Practices > 90, SEO > 90 | Scores met |
| **G3: Deployment** | Works on target platform without server-side runtime (Hostinger) or with Firebase services | Pass/Fail |

## Firebase Hosting Deployment

### 1. Configure

```json
// firebase.json
{
  "hosting": {
    "public": "public",
    "ignore": ["firebase.json", "**/.*", "**/node_modules/**"],
    "rewrites": [
      { "source": "**", "destination": "/index.html" }
    ],
    "headers": [
      {
        "source": "**/*.@(js|css)",
        "headers": [
          { "key": "Cache-Control", "value": "public, max-age=31536000, immutable" }
        ]
      },
      {
        "source": "**",
        "headers": [
          { "key": "X-Content-Type-Options", "value": "nosniff" },
          { "key": "X-Frame-Options", "value": "DENY" },
          { "key": "Referrer-Policy", "value": "strict-origin-when-cross-origin" }
        ]
      }
    ]
  }
}
```

### 2. Security Rules (Firestore)

```
// firestore.rules
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    // Default: deny all
    match /{document=**} {
      allow read, write: if false;
    }

    // Users can read/write their own data
    match /users/{userId} {
      allow read, write: if request.auth != null && request.auth.uid == userId;
    }

    // Public read, authenticated write
    match /public/{document} {
      allow read: if true;
      allow write: if request.auth != null;
    }
  }
}
```

### 3. Deploy

```bash
# Using JM-ADK command
/jm-adk:ship target=firebase

# Or manually
firebase deploy --only hosting
firebase deploy --only firestore:rules
firebase deploy --only functions  # if using Cloud Functions
```

### 4. Post-Deploy Verification

```bash
# Check the live site
/jm-adk:audit-perf url="https://your-project.web.app"
```

## Hostinger Deployment

### 1. Build for Static

Ensure all output is static HTML/CSS/JS:

```bash
# Build step (if using a bundler)
npm run build

# Verify: no server-side files
ls public/  # Should contain only HTML, CSS, JS, images
```

### 2. Upload via FTP/SFTP

```bash
# Using SFTP
sftp user@your-domain.com
put -r public/* /public_html/
```

Or use Hostinger's File Manager in the control panel.

### 3. Configure `.htaccess`

```apache
# .htaccess
# Enable GZIP
<IfModule mod_deflate.c>
  AddOutputFilterByType DEFLATE text/html text/css application/javascript application/json image/svg+xml
</IfModule>

# Cache static assets
<IfModule mod_expires.c>
  ExpiresActive On
  ExpiresByType text/css "access plus 1 year"
  ExpiresByType application/javascript "access plus 1 year"
  ExpiresByType image/png "access plus 1 month"
  ExpiresByType image/jpeg "access plus 1 month"
  ExpiresByType image/svg+xml "access plus 1 month"
</IfModule>

# Security headers
Header always set X-Content-Type-Options "nosniff"
Header always set X-Frame-Options "DENY"
Header always set Referrer-Policy "strict-origin-when-cross-origin"

# SPA routing (redirect all to index.html)
<IfModule mod_rewrite.c>
  RewriteEngine On
  RewriteBase /
  RewriteRule ^index\.html$ - [L]
  RewriteCond %{REQUEST_FILENAME} !-f
  RewriteCond %{REQUEST_FILENAME} !-d
  RewriteRule . /index.html [L]
</IfModule>

# Force HTTPS
RewriteEngine On
RewriteCond %{HTTPS} off
RewriteRule ^(.*)$ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]
```

### 4. SSL Certificate

Hostinger provides free SSL via Let's Encrypt. Enable it in:
**Hosting → SSL → Install SSL Certificate**

### 5. Post-Deploy Verification

```bash
/jm-adk:audit-perf url="https://your-domain.com"
/jm-adk:audit-a11y url="https://your-domain.com"
```

## Environment Variables

### Firebase

Never commit Firebase config with real credentials. Use environment-specific configs:

```javascript
// firebase-config.js
const firebaseConfig = {
  apiKey: "AIza...",           // OK: this is a public identifier
  authDomain: "app.firebaseapp.com",
  projectId: "your-project",
  storageBucket: "your-project.appspot.com",
  messagingSenderId: "123456789",
  appId: "1:123456789:web:abc123"
};
```

**Note**: Firebase web config keys are designed to be public. Security is enforced through Firestore Security Rules and Firebase Auth, not by hiding config.

### Sensitive Keys

For server-side secrets (Cloud Functions):

```bash
# Set secrets in Firebase
firebase functions:secrets:set STRIPE_KEY
firebase functions:secrets:set WEBHOOK_SECRET
```

```javascript
// In Cloud Functions
const { defineSecret } = require('firebase-functions/params');
const stripeKey = defineSecret('STRIPE_KEY');

exports.processPayment = onRequest(
  { secrets: [stripeKey] },
  (req, res) => {
    const stripe = require('stripe')(stripeKey.value());
    // ...
  }
);
```

## CI/CD with GitHub Actions

### Basic Workflow

```yaml
# .github/workflows/deploy.yml
name: Deploy

on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Install dependencies
        run: npm ci

      - name: Build
        run: npm run build

      - name: Lighthouse audit
        uses: treosh/lighthouse-ci-action@v12
        with:
          urls: |
            http://localhost:5000
          budgetPath: ./lighthouse-budget.json

      - name: Deploy to Firebase
        uses: FirebaseExtended/action-hosting-deploy@v0
        with:
          repoToken: ${{ secrets.GITHUB_TOKEN }}
          firebaseServiceAccount: ${{ secrets.FIREBASE_SERVICE_ACCOUNT }}
          channelId: live
```

### Lighthouse Budget

```json
// lighthouse-budget.json
[
  {
    "path": "/*",
    "timings": [
      { "metric": "first-contentful-paint", "budget": 2000 },
      { "metric": "interactive", "budget": 3500 },
      { "metric": "cumulative-layout-shift", "budget": 0.1 }
    ],
    "resourceSizes": [
      { "resourceType": "total", "budget": 500 },
      { "resourceType": "script", "budget": 150 },
      { "resourceType": "stylesheet", "budget": 50 }
    ]
  }
]
```

## Monitoring

### Firebase

- **Performance Monitoring**: Auto-enabled with Firebase SDK
- **Crashlytics**: For web app error tracking
- **Analytics**: User behavior and engagement
- **Hosting Usage**: Dashboard shows bandwidth and requests

### Custom Monitoring

```javascript
// web-vitals.js
import { onCLS, onINP, onLCP } from 'web-vitals';

function sendToAnalytics({ name, delta, id }) {
  gtag('event', name, {
    event_category: 'Web Vitals',
    value: Math.round(name === 'CLS' ? delta * 1000 : delta),
    event_label: id,
    non_interaction: true,
  });
}

onCLS(sendToAnalytics);
onINP(sendToAnalytics);
onLCP(sendToAnalytics);
```

## Rollback

### Firebase

```bash
# List recent deployments
firebase hosting:channel:list

# Rollback to previous version
firebase hosting:rollback
```

### Hostinger

Keep a backup of the previous `public_html/` contents before deploying. Hostinger also provides automatic daily backups in the control panel.

---

*Made with Claude Code and Tons of Love with the Help of Pristino Agent*
