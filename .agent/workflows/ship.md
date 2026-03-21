---
description: "Build optimized bundle and deploy to Hostinger or Firebase Hosting"
---

# /ship

## Purpose
Build a production-optimized bundle and deploy it to the configured hosting target (Hostinger shared hosting or Firebase Hosting), with pre-flight checks and post-deploy verification.

## Workflow

### Phase 1: Pre-Flight Checks
**Agent**: `quality-guardian`
**Skills**: `deployment-checklist`, `security-testing`, `build-optimization`

1. Scan for exposed secrets, API keys, or credentials in source
2. Verify all environment variables are set for production
3. Run linting and ensure zero errors
4. Check that all tests pass (unit + integration)
5. Validate Lighthouse scores meet thresholds (Performance > 90, Accessibility > 95)

### Gate: Pre-Flight Gate (G0 + G2)
- [ ] No secrets in source code
- [ ] Environment variables configured
- [ ] Lint passes with zero errors
- [ ] All tests pass
- [ ] Lighthouse thresholds met

### Phase 2: Build
**Agent**: `deployment-specialist`
**Skills**: `build-optimization`, `image-optimization`, `font-optimization`

1. Clean previous build artifacts
2. Run production build (Vite/Webpack/Angular CLI/esbuild)
3. Optimize images (WebP conversion, responsive srcset)
4. Subset and preload fonts
5. Generate service worker for PWA (if configured)
6. Verify bundle size is within budget (< 200KB initial JS)

### Phase 3: Deploy to Target
**Agent**: `deployment-specialist`
**Skills**: `hostinger-deployment`, `firebase-deployment`, `firebase-hosting`

#### Path A: Hostinger
1. Connect to Hostinger via FTP/SFTP
2. Upload build output to public_html directory
3. Configure .htaccess (redirects, caching, compression, error pages)
4. Verify custom domain and SSL certificate
5. Test all routes resolve correctly (SPA fallback if needed)

#### Path B: Firebase Hosting
1. Run `firebase deploy --only hosting`
2. Deploy Cloud Functions if changed (`firebase deploy --only functions`)
3. Deploy Firestore rules if changed (`firebase deploy --only firestore:rules`)
4. Verify preview URL before promoting to live channel
5. Confirm custom domain configuration

### Phase 4: Post-Deploy Verification
**Agent**: `quality-guardian`
**Skills**: `performance-testing`, `cross-browser-testing`, `google-analytics`

1. Smoke test critical user flows on production URL
2. Verify Core Web Vitals (LCP < 2.5s, FID < 100ms, CLS < 0.1)
3. Check mobile and desktop rendering
4. Confirm analytics events are firing
5. Test error pages (404, 500) display correctly

### Gate: Ship Gate (G3)
- [ ] Production URL is live and accessible
- [ ] Core Web Vitals pass
- [ ] Critical flows work end-to-end
- [ ] Analytics confirmed active
- [ ] SSL certificate valid
- [ ] No console errors on production

## Output
- Production build artifact (minified, optimized)
- Deployed site (live URL)
- Deployment log (timestamp, target, version)
- Post-deploy verification report
