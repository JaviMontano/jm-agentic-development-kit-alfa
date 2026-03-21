---
description: "Payment integration"
user-invocable: true
---

# /jm-adk:create-payment

## Purpose

Generate a payment integration with checkout flow, webhook handling, and order management. Use this to add payment processing to your application.

## Workflow

1. Configure payment provider (Stripe, MercadoPago) with API keys and webhook secrets.
2. Generate checkout UI with cart summary, payment form, and order confirmation.
3. Implement server-side payment processing via Cloud Functions with webhook handlers.
4. Create order management with status tracking and receipt generation.

## Arguments

- `provider` — Payment provider: `stripe` | `mercadopago` (required)
- `type` — Payment type: `one-time` | `subscription` | `both` (optional, default: one-time)
- `currency` — Default currency (optional, default: USD)

## Examples

```bash
/jm-adk:create-payment provider=stripe
/jm-adk:create-payment provider=stripe type=subscription currency=USD
```

## Related Commands

- `/jm-adk:create-form` — Custom payment forms
- `/jm-adk:create-email` — Payment receipt emails
- `/jm-adk:audit-security` — Security audit for payments
