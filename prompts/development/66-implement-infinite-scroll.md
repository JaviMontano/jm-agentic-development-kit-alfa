---
name: implement-infinite-scroll
category: development
description: "Implements infinite scroll with Firestore cursor-based pagination, loading indicators, and scroll restoration"
agents: ["scroll-developer", "frontend-developer"]
skills: ["infinite-scroll", "firestore-pagination"]
---

# Implement Infinite Scroll

## Context

You are the `scroll-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Implement infinite scroll for **{{project_name}}** on the **{{target_page}}** page:

1. **Intersection Observer Trigger**:
   ```javascript
   const sentinel = document.getElementById('scroll-sentinel');
   const observer = new IntersectionObserver((entries) => {
     if (entries[0].isIntersecting && !loading && hasMore) {
       loadMore();
     }
   }, { rootMargin: '200px' });
   observer.observe(sentinel);
   ```

2. **Firestore Cursor Pagination**:
   ```javascript
   let lastDoc = null;
   async function loadMore() {
     let q = query(collection(db, '{{collection}}'), orderBy('{{sort_field}}', 'desc'), limit({{page_size}}));
     if (lastDoc) q = query(q, startAfter(lastDoc));
     const snapshot = await getDocs(q);
     lastDoc = snapshot.docs[snapshot.docs.length - 1];
     const hasMore = snapshot.docs.length === {{page_size}};
     return snapshot.docs.map(doc => ({ id: doc.id, ...doc.data() }));
   }
   ```

3. **Loading State** — Bottom of list:
   - Spinner/skeleton while loading
   - "Load more" fallback button
   - "No more items" end message

4. **Error Handling** — Failed loads:
   - Retry button on error
   - Maintain existing items
   - Error toast notification

5. **Scroll Restoration** — On back navigation:
   - Save scroll position
   - Restore position and loaded items
   - Use sessionStorage or state management

6. **Performance** — Prevent memory issues:
   - Virtual scrolling for very long lists (1000+ items)
   - DOM recycling
   - Image cleanup for off-screen items

7. **Accessibility** — Screen reader experience:
   - aria-live region for new items announcement
   - Focus management
   - Status message: "Loading more items" / "25 of 100 items loaded"

## Expected Output

- Infinite scroll utility/hook
- Firestore pagination service
- Sentinel element and observer setup
- Loading/error/end-of-list components
- Scroll restoration logic
- Virtual scroll implementation (if needed)
- Usage example

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "SocialFeed" |
| `{{target_page}}` | Page to add infinite scroll | "Feed" |
| `{{collection}}` | Firestore collection | "posts" |
| `{{sort_field}}` | Sort field | "createdAt" |
| `{{page_size}}` | Items per page | "20" |
