# ChannelAI — Production-Ready Configuration Package

This release is intended to be configured and deployed as a real SaaS application.

## Required external configuration

Copy `.env.production.example` to `.env.production` and fill every `REQUIRED_*` value.

Required provider accounts:
1. PostgreSQL
2. Redis
3. LLM provider
4. Search/research provider
5. TTS provider
6. Licensed media provider or your own media bucket
7. S3-compatible object storage
8. Google Cloud project with YouTube Data API + OAuth
9. Stripe
10. SMTP/email provider
11. Error monitoring provider (recommended)

## Start

```bash
cp .env.production.example .env.production
docker compose -f infra/docker-compose.prod.yml up -d --build
```

Then run migrations:

```bash
docker compose -f infra/docker-compose.prod.yml exec api alembic upgrade head
```

Check:

```bash
curl http://localhost/health
curl http://localhost/ready
```

## Important

The repository contains application code and provider adapters, but credentials, OAuth consent configuration, domains, DNS, cloud resources and third-party account verification are necessarily supplied by the operator.

Do not enable unattended public publishing until the YouTube OAuth flow, moderation, QC, billing, quotas and retry behavior have been validated on your own accounts.
