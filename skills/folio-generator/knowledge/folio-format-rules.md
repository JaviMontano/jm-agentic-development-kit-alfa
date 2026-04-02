# Reglas de Formato de Folios

## Formato Estandar

```
{PREFIX}-{YYYY}-{NNN}
```

- **PREFIX**: 3 letras mayusculas que identifican el tipo de documento
- **YYYY**: Ano de emision (4 digitos)
- **NNN**: Numero secuencial (3 digitos, con ceros a la izquierda)

## Prefijos Registrados

| Prefijo | Tipo | Uso |
|---------|------|-----|
| COT | Cotizacion | Propuestas economicas a clientes |
| MEM | Memorandum | Comunicaciones internas |
| FAC | Factura | Documentos de cobro |
| MIN | Minuta | Actas y minutas de reunion |
| DOC | Documento | Generico (cuando no aplica otro) |
| OFI | Oficio | Comunicaciones oficiales externas |
| ORD | Orden | Ordenes de compra / servicio |
| INF | Informe | Reportes y evaluaciones |

## Reglas de Numeracion

1. Los numeros son secuenciales por prefijo y por ano
2. Cada ano reinicia la secuencia a 001
3. No se reutilizan numeros cancelados (se saltan)
4. El tracker `.folio-tracker.json` mantiene el ultimo numero por prefijo

## Estructura del Tracker

```json
{
  "folios": {
    "COT": { "2026": 42 },
    "MEM": { "2026": 15 },
    "FAC": { "2026": 8 }
  },
  "last_updated": "2026-04-02T13:00:00Z"
}
```

## Vigencia por Tipo

| Tipo | Vigencia Default |
|------|-----------------|
| COT | 30 dias |
| MEM | Sin vigencia |
| FAC | 30 dias |
| MIN | Permanente |
| OFI | 60 dias |
| ORD | 15 dias |
