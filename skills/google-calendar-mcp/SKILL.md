---
name: google-calendar-mcp
author: JM Labs (Javier Montano)
version: 1.0.0
description: >
  Google Calendar integration via MCP — create, manage, and query calendar events
  with Google Meet support. [EXPLICIT]
  Trigger: "calendar", "schedule", "meeting", "event", "agenda", "google meet"
status: production
tags: [mcp, google-calendar, scheduling, automation, google]
mcp-server: workspace-mcp
allowed-tools:
  - Read
  - Write
  - Bash
  - mcp__workspace-mcp__list_calendars
  - mcp__workspace-mcp__get_events
  - mcp__workspace-mcp__manage_event
  - mcp__workspace-mcp__manage_out_of_office
---

# Google Calendar MCP

> "Time is the scarcest resource; unless it is managed, nothing else can be managed." — Peter Drucker

## TL;DR

Manages Google Calendar directly from Claude Code via the Google Workspace MCP server. Create events, schedule meetings with Google Meet links, query agendas, and manage calendars — all through natural language. Part of the `google-workspace` MCP server. [EXPLICIT]

## Prerequisites

- Google Workspace MCP server configured (see `docs/google-workspace-mcp-setup.md`)
- Google Calendar API enabled in Google Cloud Console
- OAuth2 credentials authenticated
- Environment variable `GOOGLE_WORKSPACE_CREDENTIALS_PATH` set

## Procedure

### Step 1: Verify Connection
- Confirm MCP server is running: `claude mcp list` should show `google-workspace`
- Test by listing calendars
- If auth expired, re-run: `npx @piotr-agier/google-drive-mcp` (opens browser)

### Step 2: Query Calendar
- List upcoming events for today/week/custom range
- Search events by title, attendees, or date range
- View event details including attendees, location, Meet link

### Step 3: Create & Manage Events
- Create events with title, date/time, description, attendees
- Add Google Meet video conferencing automatically
- Set reminders and recurrence patterns
- Update existing events (reschedule, add attendees)
- Delete or cancel events

### Step 4: Multi-Calendar
- List all available calendars
- Create events on specific calendars
- Manage shared calendar access

## Quality Criteria

- [ ] Events created with correct timezone
- [ ] Google Meet links generated when requested
- [ ] Attendee emails validated before sending invites
- [ ] Recurring events handled correctly
- [ ] Evidence tags on all claims

## Anti-Patterns

- Creating events without confirming date/time with user
- Deleting events without explicit confirmation
- Sending calendar invites without user review
- Scheduling over existing events without checking availability

## Related Skills

- `gmail-mcp` — send email follow-ups after scheduling
- `google-workspace-apis` — programmatic Calendar API patterns
- `notification-service` — automated reminders

## Usage

- `/google-calendar-mcp` — interactive calendar management
- "what meetings do I have tomorrow?"
- "schedule a meeting with Ana next Tuesday at 3pm with Google Meet"
- "cancel the standup on Friday"

## Assumptions & Limits

- Requires authenticated Google Workspace MCP server [EXPLICIT]
- Calendar timezone follows account default unless specified [EXPLICIT]
- Cannot access calendars from non-authenticated accounts [EXPLICIT]
- Google Meet links require Google Workspace or personal Google account [EXPLICIT]
