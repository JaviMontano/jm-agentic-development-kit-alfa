---
name: create-chart
category: development
description: "Creates interactive chart components using Chart.js with Firestore data source, responsive sizing, and accessible colors"
agents: ["chart-developer", "data-viz-developer"]
skills: ["chart-creation", "data-visualization"]
---

# Create Chart

## Context

You are the `chart-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a **{{chart_type}}** chart for **{{project_name}}**:

Data requirements:
```
{{data_requirements}}
```

1. **Chart Component** — Using Chart.js:
   ```javascript
   import { Chart } from 'chart.js/auto';

   const chart = new Chart(ctx, {
     type: '{{chart_type}}',
     data: { labels: [], datasets: [] },
     options: {
       responsive: true,
       maintainAspectRatio: false,
       plugins: { legend: {}, tooltip: {} }
     }
   });
   ```

2. **Data Fetching** — Query Firestore:
   - Aggregation logic for chart data
   - Date grouping (daily, weekly, monthly)
   - Real-time updates (chart.update())
   - Data transformation pipeline

3. **Styling** — Visual design:
   - Colors from design tokens
   - Accessible color palette (distinguishable for color-blind users)
   - Custom tooltips
   - Annotation lines (targets, averages)

4. **Interactions** — User interactions:
   - Hover tooltips with formatted values
   - Click to drill down (optional)
   - Legend toggle to show/hide datasets
   - Zoom and pan (for time series)

5. **Responsive** — Size adaptation:
   - Container-responsive
   - Adjust label density on small screens
   - Hide legend on mobile (or move to bottom)

6. **Loading State** — Placeholder while data loads.

7. **No Data State** — When there is no data to chart.

8. **Export** — Download chart as PNG image.

## Expected Output

- Chart component code
- Firestore data fetching logic
- Chart configuration object
- CSS for container
- Usage example with sample data
- Export utility

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "AnalyticsDash" |
| `{{chart_type}}` | Type of chart | "line", "bar", "doughnut", "pie", "radar" |
| `{{data_requirements}}` | What data to visualize | "Monthly revenue over the past 12 months" |
