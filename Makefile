.PHONY: build clone

build:
	docker build -t fedora-template .
	docker compose run fedora-template
