
load-fixtures:
	docker-compose exec -T php bin/console hautelook:fixtures:load -n --no-ansi -q

drop-db:
	docker-compose exec php bin/console doctrine:schema:drop --full-database --force

update-db:
	docker-compose exec php bin/console doctrine:schema:update  --complete --force

install-admin-deps:
	docker-compose exec admin yarn install

test-open:
	cd tests && yarn run cypress open

test:
	cd tests && yarn run cypress run
