---
name: create-map
category: development
description: "Creates an interactive map component with markers, clusters, popups, and geolocation using Leaflet or Google Maps"
agents: ["map-developer", "frontend-developer"]
skills: ["map-integration", "geolocation"]
---

# Create Map

## Context

You are the `map-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a map component for **{{project_name}}** using **{{map_library}}**:

Map requirements:
```
{{map_requirements}}
```

1. **Map Initialization** — Base map setup:
   ```javascript
   // Leaflet example
   const map = L.map('map').setView([{{lat}}, {{lng}}], {{zoom}});
   L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(map);
   ```

2. **Markers** — Display data points:
   - Custom marker icons
   - Marker clusters for dense data
   - Popup/tooltip on click
   - Info window content from Firestore

3. **Firestore Integration** — Load markers from Firestore:
   - GeoPoint fields for coordinates
   - Real-time listener for marker updates
   - Geospatial queries (using geohashing or GeoFirestore)

4. **User Interactions**:
   - Click on map to add marker (if editable)
   - Search by address (geocoding)
   - Current location (navigator.geolocation)
   - Draw regions/polygons (if applicable)

5. **Responsive** — Full-width on mobile, contained on desktop.
   - Touch-friendly controls
   - Resize handling

6. **Performance** — Map optimizations:
   - Lazy load map library
   - Marker clustering for 100+ markers
   - Viewport-based loading

7. **Accessibility** — Map a11y:
   - Keyboard navigation
   - Alt text for markers
   - Non-map fallback (list view)

## Expected Output

- Map component code
- Marker management logic
- Firestore geospatial query service
- CSS for map container
- Geocoding utility
- Usage examples

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "StoreLocator" |
| `{{map_library}}` | Map library | "leaflet" or "google-maps" |
| `{{map_requirements}}` | What the map shows | "Store locations with address and hours" |
| `{{lat}}` | Default center latitude | "4.6097" |
| `{{lng}}` | Default center longitude | "-74.0817" |
| `{{zoom}}` | Default zoom level | "12" |
