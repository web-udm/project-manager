restart: down up

down:
	docker-compose down --remove-orphans

up:
	docker-compose up -d

chown:
	sudo chown moildar:moildar -R .