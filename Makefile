.PHONY: makemigrations
makemigrations:
	docker exec fairpicture-website-web-1 python manage.py makemigrations

.PHONY: migrate
migrate:
	docker exec fairpicture-website-web-1 python manage.py migrate

.PHONY: createsuperuser
createsuperuser:
	docker exec fairpicture-website-web-1 python manage.py createsuperuser 

.PHONY: fullmigrate
fullmigrate: makemigrations migrate ;


.PHONY: docker-c-build
docker-c-build:
	docker-compose -p fairpicture-website build

.PHONY: docker-c-up
docker-c-up:
	docker-compose -p fairpicture-website up -d


.PHONY: tailwind-install
tailwind-install:
	docker exec fairpicture-website-web-1 python manage.py tailwind install

.PHONY: npm-install
npm-install:
	cd theme/static_src && npm install && cd ../..

.PHONY: tw-npm-start
tw-npm-start:
	cd theme/static_src && npm run start


.PHONY: setup
setup: docker-c-build docker-c-up tailwind-install npm-install