---
name: inventory-management
author: JM Labs (Javier Montano)
version: 1.0.0
description: >
  Creates and manages basic inventory systems in Google Sheets — product catalog,
  stock tracking, low-stock alerts, and movement history. [EXPLICIT]
  Trigger: "inventario", "inventory", "stock", "control de inventario", "productos"
status: production
tags: [inventory, spreadsheets, tracking, business, office]
mcp-server: workspace-mcp
allowed-tools:
  - Read
  - Write
  - Bash
  - mcp__workspace-mcp__create_spreadsheet
  - mcp__workspace-mcp__read_sheet_values
  - mcp__workspace-mcp__modify_sheet_values
  - mcp__workspace-mcp__format_sheet_range
  - mcp__workspace-mcp__get_spreadsheet_info
---

# Inventory Management

> "You can't manage what you can't measure." — Peter Drucker

## TL;DR

Creates a complete inventory system in Google Sheets with three interconnected sheets: Catalogo (product master), Movimientos (stock movements log), and Resumen (dashboard with formulas for totals, valuation, and low-stock alerts). Designed for small businesses that need reliable stock tracking without enterprise software. [EXPLICIT]

## Procedure

### Step 1: Create Spreadsheet Structure

Create a new Google Sheets spreadsheet with three sheets using `mcp__workspace-mcp__create_spreadsheet`.

**Sheet 1 — Catalogo** (Product Master)

| Column | Header | Type | Notes |
|--------|--------|------|-------|
| A | SKU | Text | Unique identifier, format: `CAT-001` |
| B | Nombre | Text | Product display name |
| C | Categoria | Text | From standardized list (see knowledge/inventory-categories.md) |
| D | Subcategoria | Text | Second-level classification |
| E | Precio Unitario | Currency (MXN) | Purchase/cost price |
| F | Precio Venta | Currency (MXN) | Retail selling price |
| G | Stock Actual | Number | Current quantity on hand |
| H | Stock Minimo | Number | Reorder threshold |
| I | Proveedor | Text | Primary supplier name |
| J | Ubicacion | Text | Storage location or shelf code |
| K | Ultima Actualizacion | Date | Last stock change date |

- Apply header formatting: bold, frozen row 1, background `#1a73e8`, white text.
- Set data validation on Categoria (column C) from the standardized category list.
- Apply conditional formatting on Stock Actual (column G): red background when value < Stock Minimo (column H).

### Step 2: Configure Movimientos Sheet

**Sheet 2 — Movimientos** (Stock Movement Log)

| Column | Header | Type | Notes |
|--------|--------|------|-------|
| A | Fecha | Date | Movement date, default TODAY() |
| B | SKU | Text | Must match a SKU in Catalogo |
| C | Nombre Producto | Text | Auto-filled via VLOOKUP from Catalogo |
| D | Tipo | Text | Data validation: "Entrada" or "Salida" |
| E | Cantidad | Number | Always positive; Tipo determines direction |
| F | Stock Anterior | Number | Before this movement (formula) |
| G | Stock Nuevo | Number | After this movement (formula) |
| H | Motivo | Text | Reason: Compra, Venta, Devolucion, Ajuste, Merma |
| I | Responsable | Text | Person who registered the movement |
| J | Notas | Text | Optional comments |

**Key formulas:**
- C2: `=IFERROR(VLOOKUP(B2,Catalogo!A:B,2,FALSE),"")`
- F2: `=IFERROR(VLOOKUP(B2,Catalogo!A:G,7,FALSE),0)` (snapshot at entry time)
- G2: `=IF(D2="Entrada",F2+E2,IF(D2="Salida",F2-E2,F2))`

Apply header formatting consistent with Catalogo sheet. Set data validation on Tipo (column D) and Motivo (column H).

### Step 3: Build Resumen Dashboard

**Sheet 3 — Resumen** (Summary Dashboard)

Layout the dashboard in sections:

**Section A — Inventario General (Row 2-8)**
| Cell | Label | Formula |
|------|-------|---------|
| A2 | Total Productos | `=COUNTA(Catalogo!A2:A)` |
| A3 | Total Unidades en Stock | `=SUM(Catalogo!G2:G)` |
| A4 | Valor Total Inventario (Costo) | `=SUMPRODUCT(Catalogo!E2:E,Catalogo!G2:G)` |
| A5 | Valor Total Inventario (Venta) | `=SUMPRODUCT(Catalogo!F2:F,Catalogo!G2:G)` |
| A6 | Margen Bruto Potencial | `=A5-A4` |
| A7 | Categorias Activas | `=COUNTA(UNIQUE(Catalogo!C2:C))` |

**Section B — Alertas de Stock Bajo (Row 10+)**
| Cell | Label | Formula |
|------|-------|---------|
| A10 | Header: "Productos con Stock Bajo" | — |
| A11+ | Dynamic list | `=FILTER(Catalogo!A2:B,Catalogo!G2:G<Catalogo!H2:H)` |

**Section C — Movimientos Recientes (Row 20+)**
| Cell | Label | Formula |
|------|-------|---------|
| A20 | Header: "Ultimos 10 Movimientos" | — |
| A21+ | Dynamic list | `=SORT(FILTER(Movimientos!A2:I,Movimientos!A2:A<>""),1,FALSE)` limited to 10 rows |

**Section D — Resumen por Categoria (Row 32+)**
| Cell | Label | Formula |
|------|-------|---------|
| A32 | Header: "Stock por Categoria" | — |
| A33+ | Category breakdown | `=UNIQUE(Catalogo!C2:C)` with adjacent SUMIFS for units and value |

### Step 4: Apply Formatting and Protection

- Format currency columns with `$#,##0.00` (MXN).
- Apply alternating row colors on Catalogo and Movimientos for readability.
- Protect formula cells in Resumen (prevent accidental edits).
- Set column widths for comfortable reading.
- Add a "Last Updated" timestamp cell on Resumen: `=MAX(Movimientos!A2:A)`.

## Quality Criteria

- [ ] Every SKU in Catalogo is unique (no duplicates)
- [ ] Stock Actual is never negative (validated or flagged)
- [ ] All Categorias come from the standardized list
- [ ] Movimientos SKUs all resolve to valid Catalogo entries
- [ ] Resumen formulas calculate correctly with sample data
- [ ] Conditional formatting highlights low-stock products in red
- [ ] Currency formatting is consistent (MXN with 2 decimals)
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- Manual stock counts without movement logging (loses audit trail)
- Free-text categories (prevents aggregation and reporting)
- Negative stock allowed without investigation (indicates data error)
- Single sheet for everything (mixes master data with transactions)

## Related Skills

- `sales-tracker` — sales generate outbound stock movements
- `office-workflow-runner` — chains inventory updates with reporting
- `brand-xlsx` — branded spreadsheet formatting

## Usage

Example invocations:

- "/inventory-management" — Create a full inventory system from scratch
- "Crea un inventario para mi tienda" — Triggers via Spanish keyword matching
- "I need to track stock for 50 products" — Builds catalog with capacity for growth
- "Actualiza el inventario con estas entradas" — Logs movements to existing spreadsheet
