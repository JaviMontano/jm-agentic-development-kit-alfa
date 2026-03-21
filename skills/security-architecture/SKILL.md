---
name: security-architecture
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Designs security architectures using threat modeling (STRIDE), authentication
  flows, encryption strategies, and defense-in-depth patterns. Produces
  security architecture documents and threat models.
  Trigger: "threat model", "STRIDE", "security architecture", "auth flow", "encryption"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash
---

# Security Architecture

> "Security is always excessive until it's not enough." — Robbie Sinclair

## TL;DR

Designs security architectures using STRIDE threat modeling, authentication/authorization flows, encryption strategies, and defense-in-depth patterns to protect systems against identified threats. Use this skill when designing new systems, conducting security reviews, or responding to security incidents.

## Procedure

### Step 1: Discover
- Identify assets to protect: data, APIs, user accounts, infrastructure
- Map trust boundaries in the system architecture
- Gather compliance requirements: SOC2, HIPAA, PCI-DSS, GDPR
- Review existing security controls and known vulnerabilities

### Step 2: Analyze
- Apply STRIDE threat modeling at each trust boundary:
  - **Spoofing**: Can identity be faked?
  - **Tampering**: Can data be modified in transit or at rest?
  - **Repudiation**: Can actions be denied without proof?
  - **Information Disclosure**: Can data leak to unauthorized parties?
  - **Denial of Service**: Can the system be overwhelmed?
  - **Elevation of Privilege**: Can users exceed their authorized access?
- Rate each threat: probability, impact, and existing controls
- Identify gaps where threats are unmitigated

### Step 3: Execute
- Design authentication flows: OAuth2/OIDC, Firebase Auth, MFA
- Define authorization model: RBAC, ABAC, or custom claims
- Specify encryption strategy: TLS, at-rest encryption, key management
- Document security headers: CSP, CORS, HSTS, X-Frame-Options
- Create a security architecture diagram showing controls at each layer
- Write a threat model document with mitigations for all identified threats

### Step 4: Validate
- Verify every STRIDE category is addressed at each trust boundary
- Confirm authentication flows handle token refresh, revocation, and session management
- Check that secrets management uses vault/KMS, not environment variables in code
- Validate security controls are testable and monitored

## Quality Criteria

- [ ] STRIDE analysis covers all trust boundaries
- [ ] Authentication and authorization are clearly separated
- [ ] Encryption covers data in transit and at rest
- [ ] Security headers are configured for all web endpoints
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- Security through obscurity instead of defense-in-depth
- Storing secrets in source code or unencrypted config files
- Authorization logic scattered across the codebase without centralization

## Related Skills

- `auth-architecture` — detailed Firebase Auth implementation patterns
- `compliance-assessment` — regulatory requirements driving security controls
- `api-design` — API security headers and authentication patterns
