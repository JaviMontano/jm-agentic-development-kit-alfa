---
name: google-sheets-mcp
author: JM Labs (Javier Montano)
version: 1.0.0
description: >
  Google Sheets integration via MCP — read, write, and manipulate spreadsheet
  data for automation and analysis workflows. [EXPLICIT]
  Trigger: "spreadsheet", "google sheets", "sheet data", "cells", "ranges"
status: production
tags: [mcp, google-sheets, spreadsheets, data, automation, google]
mcp-server: google-workspace
allowed-tools:
  - Read
  - Write
  - Bash
---

# Google Sheets MCP

> "Data is the new oil, but only if you can refine it." — Clive Humby

## TL;DR

Reads and writes Google Sheets data directly from Claude Code via the Google Workspace MCP server. Access cell ranges, update values, and work with spreadsheet data for analysis, reporting, and automation workflows. [EXPLICIT]

## Prerequisites

- Google Workspace MCP server configured (see `docs/google-workspace-mcp-setup.md`)
- Google Sheets API enabled in Google Cloud Console
- OAuth2 credentials authenticated

## Procedure

### Step 1: Access Spreadsheet
- Open spreadsheets via Drive path or spreadsheet ID
- List sheets/tabs within a spreadsheet
- Read cell ranges (A1 notation: `Sheet1!A1:D10`)

### Step 2: Read Data
- Read single cells, ranges, or entire sheets
- Get formatted or raw values
- Read named ranges

### Step 3: Write Data
- Update individual cells or ranges
- Append rows to existing data
- Clear cell ranges
- Batch update multiple ranges

### Step 4: Analyze
- Extract data for analysis in Claude Code
- Cross-reference data between sheets
- Generate summaries and reports from sheet data

## Quality Criteria

- [ ] Cell references use correct A1 notation
- [ ] Data types preserved (numbers, dates, strings)
- [ ] Batch operations used for bulk updates (efficiency)
- [ ] Rate limits respected (Sheets API: 300 requests/min)
- [ ] Evidence tags on all claims

## Anti-Patterns

- Reading entire large spreadsheets when only a range is needed
- Individual cell updates when batch update is possible
- Modifying formulas without understanding dependencies
- Writing data without validating format/type

## Related Skills

- `google-drive-mcp` — file management for spreadsheets
- `data-analysis` — statistical analysis of extracted data
- `google-workspace-apis` — programmatic Sheets API patterns

## Usage

- `/google-sheets-mcp` — interactive spreadsheet management
- "read the sales data from the Q2 spreadsheet"
- "update the status column for completed tasks"
- "append today's metrics to the tracking sheet"

## Assumptions & Limits

- Requires authenticated Google Workspace MCP server [EXPLICIT]
- Cell references follow A1 notation (`Sheet1!A1:Z100`) [EXPLICIT]
- Large ranges may hit API quotas (300 req/min) [EXPLICIT]
- Formula evaluation happens server-side [EXPLICIT]
