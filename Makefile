

DBT_PROJECT_DIR=hello_world


bootstrap:
	# Get all the dbt things up and running
	pdm install

test:
	cd $(DBT_PROJECT_DIR) && pdm run dbt test

run:
	cd $(DBT_PROJECT_DIR) && pdm run dbt run

build:
	cd $(DBT_PROJECT_DIR) && pdm run dbt build

docs:
	cd $(DBT_PROJECT_DIR) && pdm run dbt docs generate && pdm run dbt docs serve || true
