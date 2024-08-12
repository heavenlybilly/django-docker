up:
	$(eval project_path := $(shell ./enter-path.sh))
	PROJECT_PATH=$(project_path) docker compose up --build

down:
	docker compose down

restart:
	${MAKE} down
	${MAKE} up

logs:
	docker compose logs -f

bash:
	docker exec -it node bash