# KPIs de Ventas para Pequenos Negocios

## KPIs Fundamentales

| KPI | Formula | Meta Tipica |
|-----|---------|-------------|
| **Revenue Total** | SUM(ventas) | Crecimiento mensual > 5% |
| **Ticket Promedio** | Revenue / Num Transacciones | Depende del negocio |
| **Num Transacciones** | COUNT(ventas) | Estabilidad o crecimiento |
| **Revenue por Vendedor** | SUMIFS por vendedor | Equidad entre vendedores |
| **Top 5 Productos** | SORT por revenue descendente | 80/20 — top 20% = 80% revenue |

## KPIs Avanzados

| KPI | Formula | Uso |
|-----|---------|-----|
| **Conversion** | Ventas cerradas / Clientes que entraron | Eficacia de venta |
| **Recurrencia** | Clientes repetidos / Total clientes | Fidelizacion |
| **Margen** | (Revenue - Costo) / Revenue | Rentabilidad |
| **Dias sin venta** | COUNT dias con 0 transacciones | Detectar problemas |

## Formulas Google Sheets

### Revenue del mes actual
```
=SUMIFS(Ventas!F:F, Ventas!A:A, ">="&DATE(YEAR(TODAY()),MONTH(TODAY()),1), Ventas!A:A, "<="&EOMONTH(TODAY(),0))
```

### Ticket promedio
```
=IFERROR(SUMIFS(F:F, A:A, criterio) / COUNTIFS(A:A, criterio), 0)
```

### Comparativa mensual (% cambio)
```
=IFERROR(mes_actual/mes_anterior - 1, "N/A")
```

### Top producto por volumen
```
=INDEX(SORT(UNIQUE(C2:C), MMULT(N(TRANSPOSE(C2:C)=UNIQUE(C2:C)), D2:D), 0), 1)
```

## Metodos de Pago Estandar

| Metodo | Codigo |
|--------|--------|
| Efectivo | EFECTIVO |
| Tarjeta de Credito/Debito | TARJETA |
| Transferencia Bancaria | TRANSFERENCIA |
| Pago Movil / Digital | DIGITAL |
| Otro | OTRO |
