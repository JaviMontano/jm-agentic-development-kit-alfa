# Inventario Basico — Especificacion de Spreadsheet

## Hoja 1: Catalogo

### Columnas

| Col | Header | Tipo | Validacion | Ejemplo |
|-----|--------|------|------------|---------|
| A | SKU | Text | Unico, formato XXX-000 | CAM-001 |
| B | Nombre | Text | No vacio | Camiseta Logo M |
| C | Categoria | List | Estandarizada | Ropa |
| D | Subcategoria | Text | Opcional | Camisetas |
| E | Precio Venta | Currency | > 0 | $250.00 |
| F | Costo | Currency | > 0 | $120.00 |
| G | Stock Actual | Number | >= 0 | 45 |
| H | Stock Minimo | Number | >= 0 | 10 |
| I | Proveedor | Text | Opcional | Textiles SA |
| J | Ubicacion | Text | Opcional | Estante A-3 |
| K | Estado | List | Activo/Descontinuado | Activo |

### Datos de Ejemplo

| SKU | Nombre | Categoria | Precio | Costo | Stock | Min | Proveedor |
|-----|--------|-----------|--------|-------|-------|-----|-----------|
| CAM-001 | Camiseta Logo M | Ropa | $250 | $120 | 45 | 10 | Textiles SA |
| CAM-002 | Camiseta Logo XL | Ropa | $250 | $120 | 12 | 10 | Textiles SA |
| TAZ-001 | Taza Ceramica | Accesorios | $180 | $60 | 30 | 15 | Ceramica MX |
| STK-001 | Sticker Pack x10 | Papeleria | $50 | $15 | 200 | 50 | Imprenta JR |
| HOO-001 | Hoodie Premium | Ropa | $650 | $300 | 8 | 5 | Textiles SA |

### Formato Condicional

| Condicion | Formato | Columna |
|-----------|---------|---------|
| Stock Actual < Stock Minimo | Fondo rojo, texto blanco | G |
| Stock Actual < Stock Minimo * 1.5 | Fondo amarillo | G |
| Estado = "Descontinuado" | Texto tachado, gris | Fila completa |

## Hoja 2: Movimientos

### Columnas

| Col | Header | Tipo | Ejemplo |
|-----|--------|------|---------|
| A | Fecha | Date | 2026-04-02 |
| B | SKU | Text | CAM-001 |
| C | Nombre | Formula | =VLOOKUP(B2, Catalogo!A:B, 2) |
| D | Tipo | List | Entrada / Salida / Ajuste |
| E | Cantidad | Number | 20 |
| F | Stock Anterior | Number | 25 |
| G | Stock Nuevo | Formula | =IF(D2="Entrada", F2+E2, F2-E2) |
| H | Motivo | Text | Restock proveedor |
| I | Responsable | Text | Maria |
| J | Referencia | Text | OC-2026-015 |

## Hoja 3: Resumen

### KPIs

| KPI | Formula |
|-----|---------|
| Total SKUs Activos | `=COUNTIFS(Catalogo!K:K, "Activo")` |
| Valor Total Inventario | `=SUMPRODUCT(Catalogo!E:E, Catalogo!G:G)` |
| Productos Bajo Stock | `=COUNTIFS(G:G, "<"&H:H)` — donde G < H |
| Costo Total Inventario | `=SUMPRODUCT(Catalogo!F:F, Catalogo!G:G)` |
| Margen Promedio | `=AVERAGE((E:E-F:F)/E:E)` |
| Movimientos del Mes | `=COUNTIFS(Movimientos!A:A, ">="&inicio_mes)` |
