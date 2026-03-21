---
name: create-blog
category: development
description: "Creates a blog system with article listing, rich text editor, categories, tags, and Firestore storage"
agents: ["blog-developer", "content-developer"]
skills: ["blog-system", "rich-text-editor"]
---

# Create Blog System

## Context

You are the `blog-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a blog system for **{{project_name}}**:

1. **Blog Listing Page** — Article list:
   - Featured article (hero card)
   - Article cards (image, title, excerpt, date, author, tags)
   - Category filter sidebar/tabs
   - Tag cloud
   - Pagination (cursor-based from Firestore)
   - Search articles

2. **Article Page** — Single article view:
   - Title, author, date, read time
   - Featured image
   - Rich content rendering (HTML from Firestore)
   - Table of contents (generated from headings)
   - Social share buttons
   - Related articles
   - Comments section (optional)
   - SEO: meta tags, structured data (Article schema)

3. **Admin: Article Editor** — Content management:
   - Rich text editor (Quill, TinyMCE, or Tiptap)
   - Title, slug (auto-generated), excerpt
   - Featured image upload (Firebase Storage)
   - Category and tag selection
   - Draft/Published status
   - Scheduled publishing (publishAt date)
   - SEO fields (meta title, description)
   - Auto-save drafts

4. **Firestore Schema**:
   ```
   posts/{postId}: {
     title, slug, excerpt, content (HTML), featuredImage,
     author: { uid, displayName, photoURL },
     category, tags[], status (draft|published|archived),
     publishedAt, createdAt, updatedAt,
     readTime, viewCount
   }
   ```

5. **URL Strategy** — SEO-friendly URLs:
   - `/blog` — listing
   - `/blog/{{slug}}` — article
   - `/blog/category/{{category}}` — category filter

6. **RSS Feed** — Cloud Function to generate RSS XML.

## Expected Output

- Blog listing page
- Article page
- Admin editor page
- Firestore CRUD service for posts
- Firebase Storage integration for images
- SEO implementation
- RSS Cloud Function
- CSS styles

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "CompanyBlog" |
| `{{editor_library}}` | Rich text editor choice | "quill" |
