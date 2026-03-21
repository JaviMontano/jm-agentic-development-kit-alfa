---
name: create-htaccess
category: deployment
description: "Creates a comprehensive .htaccess file for Apache servers with rewrites, security, caching, and compression"
agents: ["server-config-engineer", "deployment-engineer"]
skills: ["htaccess-configuration", "apache-config"]
---

# Create .htaccess

## Context

You are the `server-config-engineer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create an .htaccess file for **{{project_name}}** deployed on Hostinger (Apache):

1. **SPA Routing** — All routes to index.html:
   ```apache
   RewriteEngine On
   RewriteBase /
   RewriteRule ^index\.html$ - [L]
   RewriteCond %{REQUEST_FILENAME} !-f
   RewriteCond %{REQUEST_FILENAME} !-d
   RewriteRule . /index.html [L]
   ```

2. **HTTPS Redirect**:
   ```apache
   RewriteCond %{HTTPS} off
   RewriteRule ^(.*)$ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]
   ```

3. **WWW Redirect** (choose one):
   ```apache
   # Non-www to www
   RewriteCond %{HTTP_HOST} !^www\. [NC]
   RewriteRule ^(.*)$ https://www.%{HTTP_HOST}/$1 [R=301,L]
   ```

4. **Compression** — Enable gzip:
   ```apache
   <IfModule mod_deflate.c>
     AddOutputFilterByType DEFLATE text/html text/css text/javascript
     AddOutputFilterByType DEFLATE application/javascript application/json
     AddOutputFilterByType DEFLATE image/svg+xml
   </IfModule>
   ```

5. **Browser Caching** — Cache headers:
   ```apache
   <IfModule mod_expires.c>
     ExpiresActive On
     ExpiresByType text/html "access plus 0 seconds"
     ExpiresByType text/css "access plus 1 year"
     ExpiresByType application/javascript "access plus 1 year"
     ExpiresByType image/webp "access plus 1 year"
     ExpiresByType image/png "access plus 1 year"
     ExpiresByType font/woff2 "access plus 1 year"
   </IfModule>
   ```

6. **Security Headers**:
   ```apache
   Header set X-Content-Type-Options "nosniff"
   Header set X-Frame-Options "DENY"
   Header set X-XSS-Protection "1; mode=block"
   Header set Referrer-Policy "strict-origin-when-cross-origin"
   Header set Strict-Transport-Security "max-age=31536000; includeSubDomains"
   ```

7. **Block Access** — Protect sensitive files:
   ```apache
   <FilesMatch "\.(env|json|lock|md|yml|yaml)$">
     Require all denied
   </FilesMatch>
   ```

8. **Custom Error Pages**:
   ```apache
   ErrorDocument 404 /index.html
   ErrorDocument 500 /error.html
   ```

9. **CORS** — If needed for API access.

## Expected Output

- Complete .htaccess file
- Comments explaining each section
- Testing checklist
- Troubleshooting guide (common issues)

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "HostingerSite" |
| `{{domain_preference}}` | WWW or non-WWW | "www" |
