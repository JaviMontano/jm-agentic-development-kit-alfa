---
name: google-docs-mcp
author: JM Labs (Javier Montano)
version: 1.0.0
description: >
  Google Docs integration via MCP — create, edit, and format documents with
  surgical text operations, tables, and images. [EXPLICIT]
  Trigger: "google doc", "create document", "edit doc", "document"
status: production
tags: [mcp, google-docs, documents, content, automation, google]
mcp-server: workspace-mcp
allowed-tools:
  - Read
  - Write
  - Bash
  - mcp__workspace-mcp__get_doc_content
  - mcp__workspace-mcp__create_doc
  - mcp__workspace-mcp__modify_doc_text
  - mcp__workspace-mcp__search_docs
  - mcp__workspace-mcp__find_and_replace_doc
  - mcp__workspace-mcp__insert_doc_elements
  - mcp__workspace-mcp__get_doc_as_markdown
  - mcp__workspace-mcp__export_doc_to_pdf
---

# Google Docs MCP

> "Writing is thinking. To write well is to think clearly." — David McCullough

## TL;DR

Creates and edits Google Docs directly from Claude Code via the Google Workspace MCP server. Perform surgical text insertions/deletions, manage tables, embed images, and add comments — all programmatically. [EXPLICIT]

## Prerequisites

- Google Workspace MCP server configured (see `docs/google-workspace-mcp-setup.md`)
- Google Docs API enabled in Google Cloud Console
- OAuth2 credentials authenticated

## Procedure

### Step 1: Create or Open
- Create new Google Docs with title and initial content
- Open existing docs via Drive path or document ID
- List recent documents

### Step 2: Edit Content
- Insert text at specific positions
- Delete text ranges
- Replace content with find-and-replace
- Format text (bold, italic, headings, lists)

### Step 3: Rich Content
- Create and populate tables
- Embed images from URLs or Drive
- Add comments for collaboration
- Insert page breaks and section dividers

### Step 4: Export
- Read document content as text
- Generate document for sharing or download

## Quality Criteria

- [ ] Text operations target correct document positions
- [ ] Tables properly formatted with headers
- [ ] Images sized appropriately for document layout
- [ ] Comments include actionable context
- [ ] Evidence tags on all claims

## Anti-Patterns

- Overwriting entire documents when surgical edits suffice
- Inserting unformatted raw text into styled documents
- Creating documents without clear naming convention

## Related Skills

- `google-drive-mcp` — file management for docs
- `email-template-builder` — HTML document templates
- `google-workspace-apis` — programmatic Docs API patterns

## Usage

- `/google-docs-mcp` — interactive document management
- "create a Google Doc with the meeting notes"
- "add a table of action items to the project doc"
- "insert the summary at the beginning of the report"

## Assumptions & Limits

- Requires authenticated Google Workspace MCP server [EXPLICIT]
- Complex formatting may require multiple operations [EXPLICIT]
- Document size limits apply per Google Docs quotas [EXPLICIT]
