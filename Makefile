build:
	docker compose build
up:
	docker compose up -d
down:
	docker compose down
test:
	docker compose run --rm web rspec
lint:
	docker compose run --rm web bundle exec standardrb --fix
console:
	docker compose run --rm web bundle exec rails console

# db helpers
migrate:
	docker compose run --rm web bundle exec rails db:migrate
setup:
	docker compose run --rm web bundle exec rails db:setup

# administration
initial:
	docker compose run --no-deps web rails new . --force --database=postgresql -T
admin:
	sudo chown -R ${USER}:${USER} .
