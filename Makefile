init:
	docker-compose up -d --build
up:
	docker-compose up -d
build:
	docker-compose build
down:
	docker-compose down
destroy:
	docker-compose down --rmi all --volumes
ps:
	docker-compose ps
logs:
	docker-compose logs
sh:
	docker-compose exec pandoc sh
pandoc:
	docker-compose exec pandoc sh toHtml.sh