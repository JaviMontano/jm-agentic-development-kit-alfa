---
name: create-search
category: development
description: "Creates a search feature with autocomplete, filters, highlighting, and Firestore query optimization"
agents: ["search-developer", "frontend-developer"]
skills: ["search-implementation", "firestore-queries"]
---

# Create Search

## Context

You are the `search-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a search feature for **{{project_name}}** searching **{{searchable_entities}}**:

1. **Search Input** — UI component:
   - Search icon
   - Clear button (X) when has text
   - Debounced input (300ms)
   - Keyboard shortcut (Cmd/Ctrl + K)
   - aria-role="search"

2. **Autocomplete/Suggestions** — Dropdown results:
   - Show results as user types (after 2+ characters)
   - Highlight matching text in results
   - Keyboard navigation (Up/Down/Enter/Escape)
   - Category grouping (if multiple entity types)
   - Recent searches (localStorage)

3. **Firestore Search Strategy** — Since Firestore lacks full-text search:
   - **Option A**: Array-contains with keywords array
     ```javascript
     // On document write, generate search keywords
     function generateKeywords(text) {
       const words = text.toLowerCase().split(' ');
       // Generate prefixes for each word
     }
     ```
   - **Option B**: Third-party search (Algolia, Typesense)
   - **Option C**: Cloud Function with in-memory filtering (small datasets)

4. **Search Results Page** — Full results display:
   - Result cards with highlighted matches
   - Result count
   - Sort options (relevance, date, name)
   - Filter sidebar
   - Pagination
   - No results state with suggestions

5. **Filters** — Refinement options:
   - Category filter (checkbox)
   - Date range filter
   - Status filter
   - Active filter chips with remove

6. **Performance** — Search optimization:
   - Debounce queries
   - Cancel previous requests
   - Cache recent searches
   - Limit result set

7. **Analytics** — Track search behavior:
   - Search terms (Firebase Analytics)
   - Zero-result searches
   - Click-through rate

## Expected Output

- Search input component
- Autocomplete dropdown component
- Firestore search service with keyword generation
- Search results page
- Filter components
- CSS styles
- Analytics events

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "KnowledgeBase" |
| `{{searchable_entities}}` | What can be searched | "Articles, FAQs, Users" |
