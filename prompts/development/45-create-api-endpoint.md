---
name: create-api-endpoint
category: development
description: "Creates a Firebase Cloud Function HTTP endpoint with input validation, auth checking, and error handling"
agents: ["api-developer", "backend-developer"]
skills: ["cloud-functions", "api-development"]
---

# Create API Endpoint

## Context

You are the `api-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a Cloud Functions API endpoint for **{{project_name}}**:

Endpoint specification:
```
{{endpoint_spec}}
```

1. **Function Code** — Complete Cloud Function:
   ```typescript
   import * as functions from 'firebase-functions';
   import * as admin from 'firebase-admin';

   export const {{functionName}} = functions
     .region('{{region}}')
     .https.onRequest(async (req, res) => {
       // CORS handling
       // Auth verification
       // Input validation
       // Business logic
       // Response
     });
   ```

2. **Input Validation** — Validate all inputs:
   - Type checking
   - Required fields
   - Format validation
   - Sanitization (prevent injection)

3. **Authentication** — Verify Firebase Auth token:
   ```typescript
   const idToken = req.headers.authorization?.split('Bearer ')[1];
   const decodedToken = await admin.auth().verifyIdToken(idToken);
   ```

4. **Authorization** — Check permissions:
   - Custom claims check
   - Resource ownership check

5. **Business Logic** — Core logic:
   - Firestore operations
   - Data transformation
   - External API calls (if any)
   - Transaction handling (if multi-document)

6. **Error Handling** — Standardized errors:
   ```typescript
   res.status(400).json({ error: { code: 'VALIDATION_ERROR', message: '...' } });
   ```

7. **CORS Configuration** — For browser access:
   ```typescript
   import cors from 'cors';
   const corsHandler = cors({ origin: ['https://{{domain}}'] });
   ```

8. **Rate Limiting** — Prevent abuse.

9. **Logging** — Structured logging for debugging.

10. **Testing** — Unit test with Firebase Test SDK.

## Expected Output

- Complete Cloud Function code (TypeScript)
- Input validation schema
- Error response catalog
- CORS configuration
- Unit test file
- Deployment instructions

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "PaymentService" |
| `{{endpoint_spec}}` | Endpoint requirements | "POST /api/orders — Create a new order" |
| `{{functionName}}` | Function name | "createOrder" |
| `{{region}}` | Cloud Function region | "us-central1" |
