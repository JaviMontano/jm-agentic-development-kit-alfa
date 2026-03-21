---
description: "Google Maps integration"
user-invocable: true
---

# /jm-adk:create-map

## Purpose

Generate a Google Maps component with markers, overlays, and location-based features. Use this to add mapping and geolocation capabilities to your application.

## Workflow

1. Set up Google Maps JavaScript API with API key configuration.
2. Generate map component with configurable center, zoom, and map type.
3. Implement marker management, info windows, and clustering for large datasets.
4. Add optional features: geolocation, geocoding, directions, or drawing tools.

## Arguments

- `name` — Component name (optional, default: MapView)
- `features` — Map features: comma-separated (optional, e.g., "markers,geolocation,directions")
- `style` — Map style: `default` | `dark` | `minimal` | `custom` (optional, default: default)

## Examples

```bash
/jm-adk:create-map
/jm-adk:create-map features="markers,geolocation,clustering" style=dark
```

## Related Commands

- `/jm-adk:create-component` — Create generic component
- `/jm-adk:create-search` — Location-based search
- `/jm-adk:create-form` — Form with address autocomplete
