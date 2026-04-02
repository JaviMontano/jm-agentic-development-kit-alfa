---
name: google-slides-mcp
author: JM Labs (Javier Montano)
version: 1.0.0
description: >
  Google Slides integration via MCP — create and manage presentations
  programmatically. [EXPLICIT]
  Trigger: "slides", "presentation", "google slides", "deck"
status: production
tags: [mcp, google-slides, presentations, automation, google]
mcp-server: google-workspace
allowed-tools:
  - Read
  - Write
  - Bash
---

# Google Slides MCP

> "Presentation is everything. Design is the silent ambassador of your brand." — Paul Rand

## TL;DR

Creates and manages Google Slides presentations directly from Claude Code via the Google Workspace MCP server. Build decks programmatically with text, images, and structured layouts. [EXPLICIT]

## Prerequisites

- Google Workspace MCP server configured (see `docs/google-workspace-mcp-setup.md`)
- Google Slides API enabled in Google Cloud Console
- OAuth2 credentials authenticated

## Procedure

### Step 1: Create Presentation
- Create new presentation with title
- Use templates or blank slides
- Set slide dimensions and theme

### Step 2: Build Content
- Add slides with layouts (title, section, content)
- Insert text boxes with formatted content
- Embed images from URLs or Drive
- Create shapes, charts, and diagrams

### Step 3: Organize
- Reorder slides
- Duplicate slides as templates
- Add speaker notes

### Step 4: Deliver
- Share presentation via Drive
- Export or present directly

## Quality Criteria

- [ ] Consistent slide layout and formatting
- [ ] Images sized appropriately for slide dimensions
- [ ] Text legible at presentation scale
- [ ] Brand tokens applied where applicable
- [ ] Evidence tags on all claims

## Anti-Patterns

- Overloading slides with too much text
- Using inconsistent fonts/colors across slides
- Embedding very large images without compression

## Related Skills

- `google-drive-mcp` — file management for presentations
- `google-docs-mcp` — document content creation
- `google-workspace-apis` — programmatic Slides API patterns

## Usage

- `/google-slides-mcp` — interactive presentation builder
- "create a presentation about the Q2 results"
- "add a slide with the team structure diagram"

## Assumptions & Limits

- Requires authenticated Google Workspace MCP server [EXPLICIT]
- Complex animations not supported via API [EXPLICIT]
- Slide master/template editing is limited [EXPLICIT]
