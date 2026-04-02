# Categorias de Inventario para Pequenos Negocios

## Categorias Estandar

| Categoria | Subcategorias | SKU Prefix |
|-----------|---------------|------------|
| **Ropa** | Camisetas, Hoodies, Pantalones, Accesorios vestir | CAM, HOO, PAN |
| **Electronica** | Cables, Accesorios, Gadgets, Audio | ELE, CAB, GAD |
| **Papeleria** | Stickers, Libretas, Plumas, Sobres | STK, LIB, PLU |
| **Alimentos** | Snacks, Bebidas, Ingredientes | ALI, BEB, ING |
| **Limpieza** | Detergentes, Desinfectantes, Herramientas limpieza | LIM, DES |
| **Herramientas** | Manuales, Electricas, Medicion | HER, ELC, MED |
| **Mobiliario** | Escritorios, Sillas, Estantes | MOB, SIL, EST |
| **Accesorios** | Tazas, Llaveros, Bolsas, Decoracion | TAZ, LLA, BOL |
| **Servicios** | Consultoria, Diseno, Soporte (sin stock fisico) | SRV |
| **Otros** | Sin categoria especifica | OTR |

## Formato SKU

```
{CATEGORIA}-{NUMERO}
```

- 3 letras para categoria (ver tabla)
- Guion separador
- 3 digitos secuenciales (001, 002, ...)
- Ejemplo: `CAM-001` (Camiseta #1), `TAZ-003` (Taza #3)

## Niveles de Stock

| Nivel | Condicion | Accion |
|-------|-----------|--------|
| **Critico** | Stock = 0 | Restock inmediato |
| **Bajo** | Stock < Minimo | Generar alerta, planificar restock |
| **Precaucion** | Stock < Minimo * 1.5 | Monitorear |
| **Normal** | Stock >= Minimo * 1.5 | Sin accion |
| **Exceso** | Stock > Minimo * 5 | Evaluar reduccion |

## Tipos de Movimiento

| Tipo | Efecto | Ejemplos |
|------|--------|----------|
| **Entrada** | +Stock | Compra proveedor, devolucion cliente, produccion |
| **Salida** | -Stock | Venta, merma, donacion, muestra |
| **Ajuste** | +/- Stock | Inventario fisico, correccion error |
