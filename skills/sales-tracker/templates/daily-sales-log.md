# Sales Tracker — Especificacion de Spreadsheet

## Hoja 1: Ventas

### Columnas

| Col | Header | Tipo | Validacion | Ejemplo |
|-----|--------|------|------------|---------|
| A | Fecha | Date | YYYY-MM-DD, no futuro | 2026-04-02 |
| B | Hora | Time | HH:MM (24h) | 14:30 |
| C | Producto/Servicio | Text | No vacio | Camiseta Logo XL |
| D | Cantidad | Number | > 0, entero | 3 |
| E | Precio Unitario | Currency | > 0 | $250.00 |
| F | Total | Formula | =D*E | $750.00 |
| G | Metodo de Pago | List | Efectivo/Tarjeta/Transferencia/Otro | Tarjeta |
| H | Cliente | Text | Opcional | Juan Perez |
| I | Vendedor | Text | No vacio | Maria |
| J | Notas | Text | Opcional | Descuento 10% |

### Datos de Ejemplo

| Fecha | Hora | Producto | Cant | Precio | Total | Pago | Cliente | Vendedor | Notas |
|-------|------|----------|------|--------|-------|------|---------|----------|-------|
| 2026-04-01 | 09:15 | Camiseta Logo M | 2 | $250 | $500 | Efectivo | Ana Lopez | Maria | |
| 2026-04-01 | 11:30 | Taza Ceramica | 1 | $180 | $180 | Tarjeta | | Pedro | |
| 2026-04-01 | 14:00 | Camiseta Logo XL | 3 | $250 | $750 | Transferencia | Carlos R. | Maria | Pedido especial |
| 2026-04-02 | 10:00 | Sticker Pack | 5 | $50 | $250 | Efectivo | | Pedro | |
| 2026-04-02 | 16:45 | Hoodie Premium | 1 | $650 | $650 | Tarjeta | Sofia M. | Maria | |

## Hoja 2: Resumen Diario

### Formulas

| Col | Header | Formula |
|-----|--------|---------|
| A | Fecha | `=UNIQUE(Ventas!A2:A)` |
| B | Total Ventas | `=SUMIFS(Ventas!F:F, Ventas!A:A, A2)` |
| C | Transacciones | `=COUNTIFS(Ventas!A:A, A2)` |
| D | Ticket Promedio | `=IFERROR(B2/C2, 0)` |
| E | Efectivo | `=SUMIFS(Ventas!F:F, Ventas!A:A, A2, Ventas!G:G, "Efectivo")` |
| F | Tarjeta | `=SUMIFS(Ventas!F:F, Ventas!A:A, A2, Ventas!G:G, "Tarjeta")` |
| G | Transferencia | `=SUMIFS(Ventas!F:F, Ventas!A:A, A2, Ventas!G:G, "Transferencia")` |

## Hoja 3: Dashboard KPIs

### Formulas

| KPI | Formula |
|-----|---------|
| Ventas del Mes | `=SUMIFS(Ventas!F:F, Ventas!A:A, ">="&DATE(YEAR(TODAY()),MONTH(TODAY()),1))` |
| Transacciones del Mes | `=COUNTIFS(Ventas!A:A, ">="&DATE(YEAR(TODAY()),MONTH(TODAY()),1))` |
| Ticket Promedio | `=IFERROR(ventas_mes/transacciones_mes, 0)` |
| Producto Mas Vendido | `=INDEX(SORT(UNIQUE(Ventas!C:C), COUNTIFS(Ventas!C:C, UNIQUE(Ventas!C:C)), 0), 1)` |
| % Efectivo | `=SUMIFS(.., "Efectivo")/total_mes` |
| % Tarjeta | `=SUMIFS(.., "Tarjeta")/total_mes` |
| vs Mes Anterior | `=IFERROR(ventas_mes/ventas_mes_anterior - 1, "N/A")` |

### Formato Condicional

| Rango | Condicion | Formato |
|-------|-----------|---------|
| vs Mes Anterior | > 0 | Verde (crecimiento) |
| vs Mes Anterior | < 0 | Rojo (caida) |
| Ticket Promedio | < target | Amarillo (atencion) |
