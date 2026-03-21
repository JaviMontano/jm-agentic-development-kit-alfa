---
name: create-dashboard
category: development
description: "Creates a data dashboard with KPI cards, charts, filters, and real-time Firestore data updates"
agents: ["dashboard-developer", "data-visualization-developer"]
skills: ["dashboard-creation", "data-visualization"]
---

# Create Dashboard

## Context

You are the `dashboard-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a dashboard for **{{project_name}}**:

Dashboard requirements:
```
{{dashboard_requirements}}
```

1. **Layout** — Dashboard grid layout:
   - KPI cards row (top)
   - Chart area (middle, 2-column)
   - Recent activity / table (bottom)
   - Responsive: stack on mobile

2. **KPI Cards** — Key metrics:
   ```
   {{kpi_definitions}}
   ```
   - Card component: icon, label, value, trend indicator (up/down/neutral)
   - Real-time updates from Firestore
   - Loading skeleton

3. **Charts** — Data visualizations:
   - Library: Chart.js or lightweight alternative
   - Chart types needed: {{chart_types}}
   - Responsive sizing
   - Accessible colors
   - Tooltips
   - Legend

4. **Firestore Queries** — Data fetching:
   - Aggregation queries for KPIs
   - Time-series data for charts
   - Real-time listeners for live updates
   - Date range filtering

5. **Filters** — Dashboard controls:
   - Date range picker (today, 7d, 30d, 90d, custom)
   - Category filter
   - Search/filter within tables
   - Filter state in URL params

6. **Export** — Data export options:
   - Export table as CSV
   - Print-friendly layout

7. **Performance** — Dashboard-specific optimizations:
   - Lazy load charts below the fold
   - Cache aggregated data
   - Throttle real-time updates
   - Skeleton loading states

## Expected Output

- Dashboard page component
- KPI card component
- Chart components
- Filter components
- Firestore query service
- CSS with responsive grid
- Chart configuration

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "SalesTracker" |
| `{{dashboard_requirements}}` | What the dashboard shows | "Sales metrics, order trends, top products" |
| `{{kpi_definitions}}` | KPI definitions | "Total Revenue, Orders Today, Avg Order Value, Active Users" |
| `{{chart_types}}` | Types of charts needed | "line, bar, doughnut" |
