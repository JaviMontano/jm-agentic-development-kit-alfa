---
description: "Dashboard with charts and tables"
user-invocable: true
---

# /jm-adk:create-dashboard

## Purpose

Generate a dashboard view with summary cards, charts, and data tables connected to Firestore. Use this to add data visualization and monitoring capabilities.

## Workflow

1. Define dashboard metrics, data sources, and refresh strategy.
2. Generate summary cards with KPI values, trends, and sparklines.
3. Create chart components (bar, line, pie, area) with responsive sizing.
4. Add data table with sorting, filtering, and real-time Firestore subscriptions.

## Arguments

- `name` — Dashboard name (optional, default: Dashboard)
- `metrics` — Metrics to display: comma-separated (required, e.g., "users,revenue,orders")
- `charts` — Chart types: comma-separated (optional, default: "line,bar")

## Examples

```bash
/jm-adk:create-dashboard metrics="users,revenue,orders,conversion"
/jm-adk:create-dashboard name=SalesDashboard metrics="revenue,orders,aov" charts="line,pie"
```

## Related Commands

- `/jm-adk:scaffold-dashboard` — Scaffold full dashboard project
- `/jm-adk:create-chart` — Create individual chart
- `/jm-adk:create-table` — Create data table
