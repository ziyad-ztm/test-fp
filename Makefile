.PHONY: makemigrations
makemigrations:
	docker exec fpwebsite-web-1 python manage.py makemigrations

.PHONY: migrate
migrate:
	docker exec fpwebsite-web-1 python manage.py migrate

.PHONY: createsuperuser
createsuperuser:
	docker exec fpwebsite-web-1 python manage.py createsuperuser 

.PHONY: tw-install
tw-install:
	docker exec fpwebsite-web-1 python manage.py tailwind install

.PHONY: npm-install
npm-install:
	cd theme/static_src && npm install && cd ../..

.PHONY: tw-npm-start
tw-npm-start:
	cd theme/static_src && npm run start

.PHONY: fullmigrate
fullmigrate: makemigrations migrate ;

.PHONY: setup
setup: migrate npm-install