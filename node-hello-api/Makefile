.PHONY: up down build rebuild logs ps restart

up:
	docker compose up --build -d

down:
	docker compose down

build:
	docker compose build --no-cache

logs:
	docker compose logs -f

ps:
	docker compose ps

restart:
	docker compose down
	docker compose up --build -d
