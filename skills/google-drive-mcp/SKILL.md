---
name: google-drive-mcp
author: JM Labs (Javier Montano)
version: 1.0.0
description: >
  Google Drive integration via MCP — upload, download, organize, search, and share
  files and folders. [EXPLICIT]
  Trigger: "drive", "google drive", "upload file", "share file", "drive search"
status: production
tags: [mcp, google-drive, files, storage, automation, google]
mcp-server: workspace-mcp
allowed-tools:
  - Read
  - Write
  - Bash
  - mcp__workspace-mcp__search_drive_files
  - mcp__workspace-mcp__get_drive_file_content
  - mcp__workspace-mcp__create_drive_file
  - mcp__workspace-mcp__create_drive_folder
  - mcp__workspace-mcp__list_drive_items
  - mcp__workspace-mcp__copy_drive_file
  - mcp__workspace-mcp__update_drive_file
  - mcp__workspace-mcp__manage_drive_access
  - mcp__workspace-mcp__get_drive_shareable_link
---

# Google Drive MCP

> "Files are the atoms of digital work." — Unknown

## TL;DR

Manages Google Drive directly from Claude Code via the Google Workspace MCP server. Upload, download, search, organize, move, copy, rename, and share files and folders — including Shared Drives. Supports path-based navigation (`/Work/Projects/file.doc`). [EXPLICIT]

## Prerequisites

- Google Workspace MCP server configured (see `docs/google-workspace-mcp-setup.md`)
- Google Drive API enabled in Google Cloud Console
- OAuth2 credentials authenticated

## Procedure

### Step 1: Navigate & Search
- Browse files using path notation (`/My Drive/Projects/`)
- Search across Drive with keywords, file types, date ranges
- List contents of folders and Shared Drives

### Step 2: File Operations
- Upload files from local workspace to Drive
- Download files from Drive to local workspace
- Create new folders with organized structure
- Move, copy, rename files between folders

### Step 3: Share & Collaborate
- Share files/folders with specific users or teams
- Set permissions (viewer, commenter, editor)
- Access Shared Drives for team collaboration

### Step 4: Organize
- Create folder hierarchies for project organization
- Move completed work to archive folders
- Clean up duplicates and outdated files

## Quality Criteria

- [ ] File paths validated before operations
- [ ] Permissions set to minimum necessary access
- [ ] Large file uploads handled with progress tracking
- [ ] Shared Drive access confirmed before operations
- [ ] Evidence tags on all claims

## Anti-Patterns

- Deleting files without user confirmation
- Sharing files with overly broad permissions ("anyone with link")
- Uploading sensitive files (credentials, .env) to Drive
- Deep recursive folder operations without size check

## Related Skills

- `google-docs-mcp` — edit Google Docs content
- `google-sheets-mcp` — read/write spreadsheet data
- `google-slides-mcp` — create presentations
- `google-workspace-apis` — programmatic Drive API patterns

## Usage

- `/google-drive-mcp` — interactive Drive management
- "upload the report to my Drive in /Projects/Q2"
- "search Drive for presentation files from last month"
- "share the proposal folder with ana@company.com as editor"

## Assumptions & Limits

- Requires authenticated Google Workspace MCP server [EXPLICIT]
- Path navigation uses `/` as separator [EXPLICIT]
- Large files may take time to upload/download [EXPLICIT]
- Cannot access drives from non-authenticated accounts [EXPLICIT]
