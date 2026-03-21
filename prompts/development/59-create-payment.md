---
name: create-payment
category: development
description: "Creates a payment integration with Stripe or PayPal including checkout flow, webhooks, and Firestore order tracking"
agents: ["payment-developer", "backend-developer"]
skills: ["payment-integration", "stripe-setup"]
---

# Create Payment Integration

## Context

You are the `payment-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a payment integration for **{{project_name}}** using **{{payment_provider}}**:

1. **Checkout Flow** — UI and logic:
   - Product/service selection
   - Cart summary
   - Payment form (Stripe Elements or PayPal buttons)
   - Order review
   - Payment processing (loading state)
   - Success/failure page
   - Email confirmation trigger

2. **Cloud Functions** — Server-side payment logic:
   ```typescript
   // Create payment intent (Stripe)
   export const createPaymentIntent = functions.https.onCall(async (data, context) => {
     if (!context.auth) throw new functions.https.HttpsError('unauthenticated', '...');
     const paymentIntent = await stripe.paymentIntents.create({
       amount: data.amount,
       currency: '{{currency}}',
       metadata: { userId: context.auth.uid, orderId: data.orderId }
     });
     return { clientSecret: paymentIntent.client_secret };
   });
   ```

3. **Webhook Handler** — Process payment events:
   ```typescript
   export const stripeWebhook = functions.https.onRequest(async (req, res) => {
     const sig = req.headers['stripe-signature'];
     const event = stripe.webhooks.constructEvent(req.rawBody, sig, endpointSecret);
     // Handle: payment_intent.succeeded, payment_intent.failed, etc.
   });
   ```

4. **Firestore Order Schema**:
   ```json
   {
     "userId": "uid",
     "items": [{ "productId": "...", "quantity": 1, "price": 2999 }],
     "total": 2999,
     "currency": "usd",
     "status": "pending|paid|failed|refunded",
     "paymentIntentId": "pi_...",
     "createdAt": "timestamp",
     "paidAt": "timestamp"
   }
   ```

5. **Security** — Payment security:
   - Server-side price calculation (never trust client)
   - Idempotency keys
   - Webhook signature verification
   - PCI compliance (Stripe Elements handles card data)

6. **Refund Flow** — Admin-initiated refunds.

7. **Testing** — Test mode configuration and test card numbers.

## Expected Output

- Checkout page component
- Payment form component
- Cloud Functions (createPaymentIntent, webhook handler)
- Firestore order schema and rules
- Refund Cloud Function
- Testing guide with test credentials

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "ShopApp" |
| `{{payment_provider}}` | Payment provider | "stripe" or "paypal" |
| `{{currency}}` | Currency code | "usd" |
