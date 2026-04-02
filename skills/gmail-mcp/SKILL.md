---
name: gmail-mcp
author: JM Labs (Javier Montano)
version: 1.0.0
description: >
  Gmail integration via MCP — search, send, draft, label, and manage emails
  directly from Claude Code sessions. [EXPLICIT]
  Trigger: "email", "gmail", "send email", "check inbox", "drafts", "email labels"
status: production
tags: [mcp, gmail, email, automation, google]
mcp-server: workspace-mcp
allowed-tools:
  - Read
  - Write
  - Bash
  - mcp__workspace-mcp__search_gmail_messages
  - mcp__workspace-mcp__get_gmail_message_content
  - mcp__workspace-mcp__get_gmail_messages_content_batch
  - mcp__workspace-mcp__send_gmail_message
  - mcp__workspace-mcp__get_gmail_thread_content
  - mcp__workspace-mcp__modify_gmail_message_labels
  - mcp__workspace-mcp__list_gmail_labels
  - mcp__workspace-mcp__manage_gmail_label
  - mcp__workspace-mcp__manage_gmail_filter
  - mcp__workspace-mcp__list_gmail_filters
  - mcp__workspace-mcp__draft_gmail_message
---

# Gmail MCP

> "Email is the universal protocol of business communication." — Paul Graham

## TL;DR

Manages Gmail directly from Claude Code via MCP server. Search emails, send messages, manage drafts, organize with labels, handle attachments, and track threads — all through natural language. Requires OAuth2 authentication with Google. [EXPLICIT]

## Prerequisites

- Gmail MCP server configured (see `docs/google-workspace-mcp-setup.md`)
- OAuth2 credentials authenticated (`npx @dev-hitesh-gupta/gmail-mcp-server auth`)
- Environment variable `GMAIL_MCP_CONFIG_DIR` set

## Procedure

### Step 1: Verify Connection
- Confirm MCP server is running: `claude mcp list` should show `gmail`
- Test with `gmail_get_profile` to verify authentication
- If auth expired, re-run: `npx @dev-hitesh-gupta/gmail-mcp-server auth`

### Step 2: Read & Search
- Use `gmail_search` with Gmail query syntax (`from:`, `subject:`, `is:unread`, `after:`)
- Use `gmail_get_message` to read full email content by ID
- Use `gmail_get_thread` to follow conversation threads
- Use `gmail_list_attachments` + `gmail_get_attachment` for file access

### Step 3: Compose & Send
- Use `gmail_create_draft` to prepare emails for review
- Use `gmail_send` for direct sending (supports CC, BCC, threading)
- Use `gmail_send_draft` to send a previously created draft

### Step 4: Organize
- Use `gmail_list_labels` to see current label structure
- Use `gmail_create_label` / `gmail_delete_label` for label management
- Use `gmail_modify_labels` to categorize emails
- Use `gmail_mark_read` / `gmail_mark_unread` for status management
- Use `gmail_trash` / `gmail_untrash` for cleanup

## Quality Criteria

- [ ] OAuth2 token is valid and auto-refreshing
- [ ] Email content is handled securely (no logging of sensitive data)
- [ ] Attachments are processed but not stored in repo
- [ ] Rate limits respected (Gmail API: 250 quota units/second)
- [ ] Evidence tags on all claims

## Anti-Patterns

- Sending emails without user confirmation
- Storing email content or attachments in the repository
- Using broad search queries that return thousands of results
- Deleting emails without explicit user request

## Tool Reference

| Tool | Use Case |
|------|----------|
| `gmail_search` | Find emails by query (from, subject, date, labels) |
| `gmail_get_message` | Read full email by ID |
| `gmail_send` | Send new email or reply |
| `gmail_get_thread` | Get entire conversation |
| `gmail_create_draft` | Save email as draft |
| `gmail_list_drafts` | View all drafts |
| `gmail_send_draft` | Send existing draft |
| `gmail_list_labels` | List all labels |
| `gmail_modify_labels` | Add/remove labels from messages |
| `gmail_list_attachments` | List attachments in email |
| `gmail_get_attachment` | Download attachment (base64) |

## Related Skills

- `email-sending` — transactional email via SendGrid/Mailgun/SES
- `email-template-builder` — responsive HTML email templates
- `google-workspace-apis` — programmatic Workspace API integration

## Usage

- `/gmail-mcp` — interactive Gmail management
- "check my inbox for unread emails"
- "draft a reply to the last email from Juan"
- "search emails from last week about the project"

## Assumptions & Limits

- Requires authenticated Gmail MCP server [EXPLICIT]
- Cannot access emails from accounts not authenticated [EXPLICIT]
- Attachment download returns base64 (large files may hit context limits) [EXPLICIT]
- Does not replace human judgment for email communication [EXPLICIT]
