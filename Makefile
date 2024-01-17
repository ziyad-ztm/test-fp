.PHONY: makemigrations
makemigrations:
	docker exec fpwebsite-web-1 python manage.py makemigrations

.PHONY: migrate
migrate:
	docker exec fpwebsite-web-1 python manage.py migrate

.PHONY: createsuperuser
createsuperuser:
	docker exec fpwebsite-web-1 python manage.py createsuperuser 

.PHONY: fullmigrate
fullmigrate: makemigrations migrate ;
