# ChannelAI Personal Creator Edition

A private AI production studio for one YouTube creator.

## What it does

Topic
-> research
-> script
-> scene plan
-> voice
-> visuals
-> FFmpeg
-> captions
-> thumbnail
-> SEO
-> QC
-> preview
-> YouTube upload/schedule

## What is intentionally removed

- Stripe billing
- customer subscriptions
- customer registration
- teams
- multi-tenant SaaS management
- public signup
- agency billing

## Setup

1. Install Docker Desktop.
2. Copy `.env.personal.example` to `.env`.
3. Put your real provider credentials in `.env`.
4. Configure Google OAuth for your YouTube channel.
5. Start:

   docker compose -f infra/docker-compose.personal.yml up -d --build

6. Open http://localhost:3000
7. Connect YouTube.
8. Enter a topic.
9. Generate the video.
10. Review it.
11. Approve it.
12. Upload or schedule it.

## Publishing safety

`AUTO_PUBLISH=false` and `REQUIRE_HUMAN_APPROVAL=true` are deliberate defaults.

No video should be published until you review it.

## External accounts you must provide

- AI provider
- research provider
- TTS provider
- media provider, or your own licensed media
- Google Cloud / YouTube OAuth

Those credentials cannot be bundled into source code.
