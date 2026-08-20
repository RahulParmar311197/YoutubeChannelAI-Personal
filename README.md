# ChannelAI

AI-powered YouTube SaaS foundation: idea -> research -> script -> production -> thumbnail -> publishing -> analytics.

## Stack
- Next.js + TypeScript frontend
- FastAPI + SQLAlchemy async backend
- PostgreSQL
- Redis/RQ worker
- FFmpeg render adapter
- Provider-based AI/video/voice/YouTube integrations
- Docker Compose

## Start

```bash
cp .env.example .env
docker compose up --build
```

Open http://localhost:3000 and API docs at http://localhost:8000/docs.

## Production roadmap
The included provider interfaces intentionally isolate vendor-specific credentials and APIs. Add real AI/TTS/video/image/storage/YouTube adapters before enabling autonomous publishing in production.
