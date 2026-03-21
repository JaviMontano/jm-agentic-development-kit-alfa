---
name: deploy-hostinger
category: deployment
description: "Guides deployment to Hostinger shared or VPS hosting with FTP/SSH setup, build process, and server configuration"
agents: ["deployment-engineer", "hostinger-specialist"]
skills: ["hostinger-deployment", "web-hosting"]
---

# Deploy to Hostinger

## Context

You are the `deployment-engineer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Deploy **{{project_name}}** to Hostinger:

Hostinger plan: {{hostinger_plan}}
Domain: {{domain}}

1. **Build Process** — Prepare production build:
   ```bash
   # Framework-specific build
   npm run build
   # Output directory: dist/ or build/
   ```
   - Minify HTML, CSS, JS
   - Optimize images
   - Generate source maps (keep separate)
   - Environment variable replacement

2. **Deployment Method** — Choose and configure:

   **Option A: FTP/SFTP**
   ```bash
   # Using lftp for reliable sync
   lftp -u {{ftp_user}},{{ftp_pass}} {{ftp_host}} -e "
     mirror -R --delete dist/ public_html/
     quit
   "
   ```

   **Option B: SSH + Git Pull**
   ```bash
   ssh user@server "cd /home/user/public_html && git pull origin main && npm run build"
   ```

   **Option C: GitHub Actions (automated)**
   ```yaml
   - name: Deploy to Hostinger
     uses: SamKirkland/FTP-Deploy-Action@v4
     with:
       server: ${{ secrets.FTP_HOST }}
       username: ${{ secrets.FTP_USER }}
       password: ${{ secrets.FTP_PASS }}
       local-dir: ./dist/
   ```

3. **Server Configuration** — `.htaccess` for SPA:
   ```apache
   RewriteEngine On
   RewriteBase /
   RewriteRule ^index\.html$ - [L]
   RewriteCond %{REQUEST_FILENAME} !-f
   RewriteCond %{REQUEST_FILENAME} !-d
   RewriteRule . /index.html [L]
   ```

4. **SSL Setup** — HTTPS configuration:
   - Hostinger auto-SSL (Let's Encrypt)
   - Force HTTPS redirect
   - HSTS header

5. **Performance Configuration**:
   - Gzip compression
   - Browser caching headers
   - CDN setup (Hostinger CDN or Cloudflare)

6. **Post-Deployment Checklist**:
   - [ ] Site loads on custom domain
   - [ ] HTTPS working
   - [ ] SPA routing works (no 404 on refresh)
   - [ ] Assets loading (images, fonts, icons)
   - [ ] Firebase SDK connecting successfully
   - [ ] Forms submitting to Firestore
   - [ ] Auth flows working

## Expected Output

- Build script
- Deployment script/workflow
- .htaccess configuration
- SSL setup guide
- Post-deployment checklist
- Rollback procedure

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "ClientSite" |
| `{{hostinger_plan}}` | Hostinger plan type | "Premium Shared" |
| `{{domain}}` | Domain name | "www.example.com" |
