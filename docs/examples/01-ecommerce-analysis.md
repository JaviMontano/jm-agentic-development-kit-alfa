# Example: E-Commerce Platform Analysis

A complete walkthrough of using JM-ADK to analyze an e-commerce project for artisan products.

## The Request

```bash
/jm-adk:analyze input="We need an e-commerce platform for artisan products.
Small producers sell handmade goods (ceramics, textiles, jewelry).
Buyers browse, purchase, and track orders.
Producers manage inventory and fulfill orders.
Budget is limited — needs to run on affordable hosting."
```

## What Happens (Step by Step)

### 1. Orchestrator Classification

The `adk-orchestrator` classifies this as a **COMPLEX ANALYSIS** request and activates the full DSVSR metacognition cycle.

**Agents activated**: `requirements-analyst`, `domain-modeler`, `flow-mapper`, `scenario-evaluator`, `feasibility-validator`

### 2. Requirements Extraction

The `requirements-analyst` produces:

```markdown
## User Stories

### Buyer
- US-01: As a buyer, I want to browse products by category so I can find artisan goods
- US-02: As a buyer, I want to view product details with photos so I can decide to purchase
- US-03: As a buyer, I want to add items to cart and checkout so I can buy products
- US-04: As a buyer, I want to track my order status so I know when it arrives
- US-05: As a buyer, I want to search products by keyword so I can find specific items

### Producer
- US-06: As a producer, I want to list my products with descriptions and photos
- US-07: As a producer, I want to manage inventory quantities
- US-08: As a producer, I want to see and fulfill incoming orders
- US-09: As a producer, I want to view my sales dashboard

### Admin
- US-10: As an admin, I want to approve new producers
- US-11: As an admin, I want to manage product categories

## Acceptance Criteria (US-03 example)

Given: buyer has items in cart
When: buyer clicks "Checkout" and enters payment info
Then:
  - Order is created in the system [INFERENCE]
  - Payment is processed via Stripe [ASSUMPTION: Stripe selected]
  - Producer receives notification [INFERENCE]
  - Buyer receives confirmation email [INFERENCE]
  - Inventory is decremented [INFERENCE]
```

### 3. Domain Model

The `domain-modeler` maps:

```
┌─────────────┐     ┌──────────────┐     ┌─────────────┐
│   Producer   │────▶│   Product    │◀────│  Category   │
│              │ 1:N │              │ N:1 │             │
│ - name       │     │ - title      │     │ - name      │
│ - email      │     │ - price      │     │ - slug      │
│ - approved   │     │ - stock      │     └─────────────┘
└─────────────┘     │ - images[]   │
                    │ - description │
                    └──────┬───────┘
                           │ N:M
                    ┌──────┴───────┐
                    │  OrderItem   │
                    │ - quantity   │     ┌─────────────┐
                    │ - unitPrice  │────▶│   Order     │
                    └──────────────┘ N:1 │ - status    │
                                        │ - total     │
                    ┌─────────────┐────▶│ - buyerId   │
                    │    Buyer    │ 1:N └─────────────┘
                    │ - name      │
                    │ - email     │
                    │ - address   │
                    └─────────────┘
```

**Firestore Collection Design** [INFERENCE]:

```
/producers/{producerId}
/products/{productId}          ← denormalized producerName for listing
/categories/{categoryId}
/orders/{orderId}
  /items/{itemId}              ← subcollection
/users/{userId}                ← both buyers and producers (role field)
```

### 4. Flow Mapping

The `flow-mapper` traces the purchase flow:

```
Buyer                    System                   Producer
  │                        │                        │
  ├─ Browse products ─────▶│                        │
  │◀─ Product list ────────┤                        │
  ├─ Add to cart ─────────▶│                        │
  ├─ Checkout ────────────▶│                        │
  │                        ├─ Validate stock ──────▶│
  │                        ├─ Process payment        │
  │                        ├─ Create order           │
  │                        ├─ Decrement stock        │
  │                        ├─ Send confirmation ────▶│ (email)
  │◀─ Order confirmed ─────┤                        │
  │                        ├─ Notify producer ──────▶│
  │                        │                        ├─ Fulfill order
  │                        │◀─ Mark shipped ─────────┤
  │◀─ Shipping update ─────┤                        │
```

**Critical Integration Points** [INFERENCE]:
- Payment: Stripe Checkout (server-side via Cloud Functions)
- Email: Firebase Extensions (Trigger Email) or SendGrid
- Notifications: Firebase Cloud Messaging (FCM)
- Image storage: Firebase Storage with automatic thumbnails

### 5. Feasibility Validation

The `feasibility-validator` checks against the Constitution:

```markdown
## Technical Feasibility

| Requirement | Stack Support | Confidence |
|-------------|--------------|------------|
| Product browsing | Firestore queries + client-side rendering | 0.98 [CODE] |
| Image uploads | Firebase Storage + resize extension | 0.95 [DOC] |
| Payment processing | Stripe via Cloud Functions | 0.92 [DOC] |
| Real-time inventory | Firestore transactions | 0.97 [CODE] |
| Order tracking | Firestore onSnapshot | 0.98 [CODE] |
| Email notifications | Firebase Trigger Email extension | 0.90 [DOC] |
| Search | Client-side filtering (< 10K products) | 0.85 [INFERENCE] |
| Admin dashboard | Firebase Admin SDK in functions | 0.95 [DOC] |

## Hostinger Compatibility

⚠️ **Partial**: The frontend (catalog, product pages) can deploy to Hostinger
as static HTML. But payment processing and order management require Cloud
Functions → **Firebase Hosting recommended** for the full app.

**Hybrid option**: Static marketing/catalog site on Hostinger,
app functionality on Firebase Hosting. [INFERENCE]

## Cost Estimate

| Service | Free Tier | Projected (1K orders/month) |
|---------|-----------|---------------------------|
| Firestore | 50K reads/day | ~$5/month [INFERENCE] |
| Firebase Storage | 5GB | ~$1/month [INFERENCE] |
| Cloud Functions | 2M invocations/month | ~$0 (within free tier) [DOC] |
| Firebase Hosting | 10GB/month | ~$0 (within free tier) [DOC] |
| Stripe | — | 2.9% + $0.30/transaction [DOC] |
| **Total** | | **~$6/month + Stripe fees** |

## Overall Confidence: 0.93

Needs user input on:
- Expected product catalog size (affects search strategy)
- Multi-language requirement (affects i18n approach)
- Producer payout method (Stripe Connect vs manual)
```

### 6. Final Output

The analysis is compiled into a structured document with:
- All evidence tags visible
- Assumptions clearly marked
- Decision points highlighted for user input
- Mermaid diagrams for visual reference
- Next steps: scaffold with `/jm-adk:scaffold-firebase`

## Key Takeaway

The user typed **one command** with a natural language description. JM-ADK:
1. Decomposed it into 5 analysis dimensions
2. Activated 5 specialist agents
3. Produced requirements, domain model, flows, and feasibility
4. Tagged every claim with evidence markers
5. Flagged decisions that need user input
6. Estimated costs with confidence scores

Total time: ~2 minutes of agent processing. Output: a structured discovery document ready for development.

---

*Made with Claude Code and Tons of Love with the Help of Pristino Agent*
