install:
\tpython -m pip install -r apps/api/requirements.txt

test:
\tpytest -q apps/api/tests

build:
\tdocker compose -f infra/docker-compose.prod.yml build

up:
\tdocker compose -f infra/docker-compose.prod.yml up -d

down:
\tdocker compose -f infra/docker-compose.prod.yml down

migrate:
\tdocker compose -f infra/docker-compose.prod.yml exec api alembic upgrade head

verify:
\tdocker compose -f infra/docker-compose.prod.yml exec api python /app/scripts/verify-config.py

logs:
\tdocker compose -f infra/docker-compose.prod.yml logs -f
