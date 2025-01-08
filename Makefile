init: up i s
up: docker-up
down: docker-down
i: install
s: start

docker-up:
	docker-compose up -d
docker-down:
	docker-compose down

install:
	docker-compose exec app bash -c "cd solana-bot-BE && npm install"

start:
	docker-compose exec app bash -c "cd solana-bot-BE && npm start"