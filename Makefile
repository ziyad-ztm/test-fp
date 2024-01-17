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


.PHONY: compose
compose:
	docker-compose -p fairpicture-website up -d fairpicture-website --build


.PHONY: tw-install
tw-install:
	docker exec fairpicture-website-web-1 python manage.py tailwind install

.PHONY: npm-install
npm-install:
	cd theme/static_src && npm install && cd ../..

.PHONY: tw-npm-start
tw-npm-start:
	cd theme/static_src && npm run start


.PHONY: setup
setup: compose migrate npm-install