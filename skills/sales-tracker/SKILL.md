---
name: sales-tracker
author: JM Labs (Javier Montano)
version: 1.0.0
description: >
  Creates and manages daily sales tracking in Google Sheets — transaction log,
  daily/weekly/monthly summaries, and basic KPI dashboard. [EXPLICIT]
  Trigger: "ventas", "sales", "registrar venta", "reporte de ventas", "revenue tracking"
status: production
tags: [sales, tracking, spreadsheets, reporting, business, office]
mcp-server: workspace-mcp
allowed-tools:
  - Read
  - Write
  - Bash
  - mcp__workspace-mcp__create_spreadsheet
  - mcp__workspace-mcp__read_sheet_values
  - mcp__workspace-mcp__modify_sheet_values
  - mcp__workspace-mcp__format_sheet_range
---

# Sales Tracker

> "You can't manage what you don't measure." — Peter Drucker

## TL;DR

Crea y gestiona el seguimiento diario de ventas en Google Sheets. Registra transacciones, calcula totales diarios/semanales/mensuales, y genera un dashboard basico con KPIs. [EXPLICIT]

## When to Activate

| Signal | Example |
|--------|---------|
| Registrar venta | "Registra la venta de hoy: 3 camisetas a $250 c/u" |
| Reporte de ventas | "Dame el resumen de ventas de esta semana" |
| Crear tracker | "Crea una hoja de ventas para la tienda" |
| KPIs | "Cual fue el ticket promedio de marzo?" |

## S1 — Crear Spreadsheet

Crear Google Sheet con 3 hojas:

**Hoja 1: Ventas** (registro de transacciones)

| Columna | Tipo | Descripcion |
|---------|------|-------------|
| Fecha | Date | YYYY-MM-DD |
| Hora | Time | HH:MM |
| Producto/Servicio | Text | Nombre del item vendido |
| Cantidad | Number | Unidades vendidas |
| Precio Unitario | Currency | Precio por unidad |
| Total | Formula | =Cantidad * Precio Unitario |
| Metodo de Pago | List | Efectivo, Tarjeta, Transferencia, Otro |
| Cliente | Text | Nombre del cliente (opcional) |
| Vendedor | Text | Quien realizo la venta |
| Notas | Text | Observaciones |

**Hoja 2: Resumen Diario** (auto-calculado)

| Columna | Formula |
|---------|---------|
| Fecha | Unica por dia |
| Total Ventas | `=SUMIFS(Ventas!F:F, Ventas!A:A, fecha)` |
| Num Transacciones | `=COUNTIFS(Ventas!A:A, fecha)` |
| Ticket Promedio | `=Total/Transacciones` |
| Top Producto | `=INDEX(...)` mas vendido del dia |
| Efectivo | `=SUMIFS(..., "Efectivo")` |
| Tarjeta | `=SUMIFS(..., "Tarjeta")` |
| Transferencia | `=SUMIFS(..., "Transferencia")` |

**Hoja 3: Dashboard**

| KPI | Formula |
|-----|---------|
| Ventas del Mes | `=SUMIFS(rango, mes_actual)` |
| Ticket Promedio Mensual | `=AVERAGE(tickets)` |
| Top 5 Productos | `=SORT(UNIQUE(...), ventas, FALSE)` |
| Comparativa vs Mes Anterior | `=mes_actual/mes_anterior - 1` |
| Distribucion por Metodo de Pago | Porcentajes por metodo |

## S2 — Registrar Transaccion

1. Parsear input del usuario (producto, cantidad, precio, metodo)
2. Append row a hoja Ventas
3. El Resumen Diario se actualiza automaticamente via formulas
4. Confirmar registro al usuario

## S3 — Generar Reporte

1. Leer datos del periodo solicitado
2. Calcular KPIs relevantes
3. Generar resumen en markdown o HTML
4. Si solicitado: enviar por email

## S4 — Validar

- [ ] Todas las transacciones tienen fecha valida
- [ ] Montos son positivos
- [ ] Metodo de pago es valor estandarizado
- [ ] Formulas calculan correctamente

## Quality Criteria

- [ ] Transacciones con datos completos (fecha, producto, monto)
- [ ] Formulas SUMIFS/COUNTIFS correctas
- [ ] KPIs calculados con precision
- [ ] Formato de moneda consistente

## Anti-Patterns

- Registrar sin fecha o con fecha futura
- Montos negativos sin explicacion (usar "Devolucion" en notas)
- Metodos de pago no estandarizados

## Related Skills

- `inventory-management` — actualizar stock despues de venta
- `google-sheets-mcp` — operaciones directas en Sheets
- `reporting-templates` — reportes formateados
- `office-workflow-runner` — pipeline ventas → reporte

## Usage

- `/sales-tracker` — gestionar ventas
- "registra venta de 5 camisetas a $200 c/u, pago con tarjeta"
- "dame el resumen de ventas de esta semana"
- "crea la hoja de ventas para mi negocio"
