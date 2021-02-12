restart:
	docker-compose down && docker-compose up -d

chown:
	sudo chown moildar:moildar -R .