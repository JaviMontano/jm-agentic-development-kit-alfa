---
description: "Data visualization component"
user-invocable: true
---

# /jm-adk:create-chart

## Purpose

Generate a data visualization chart component with responsive sizing and real-time data updates. Use this to add visual analytics to dashboards or reports.

## Workflow

1. Select chart type and define data schema with axes, series, and labels.
2. Generate chart component using Chart.js or D3 with responsive container.
3. Implement data binding with Firestore real-time subscriptions or API polling.
4. Add interactive features: tooltips, legends, zoom, and export.

## Arguments

- `type` — Chart type: `line` | `bar` | `pie` | `doughnut` | `area` | `scatter` (required)
- `name` — Component name (optional, derived from type)
- `source` — Data source: `firestore` | `api` | `static` (optional, default: firestore)
- `library` — Chart library: `chartjs` | `d3` (optional, default: chartjs)

## Examples

```bash
/jm-adk:create-chart type=line name=RevenueChart
/jm-adk:create-chart type=pie name=CategoryBreakdown source=firestore
```

## Related Commands

- `/jm-adk:create-dashboard` — Dashboard with multiple charts
- `/jm-adk:create-table` — Complement charts with data tables
- `/jm-adk:diagram` — Static diagrams (Mermaid)
