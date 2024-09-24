.PHONY:bootstrap test run build docs help

DBT_PROFILES_PATH=~/.dbt/profiles.yml
DBT_PROFILES_EXAMPLE=dbt_profile.example
DBT_PROJECT_DIR=hello_world

include .env


profile: ## Ensure dbt profile existence
	test -f $(DBT_PROFILES_PATH) && echo "dbt profile already exists" || mkdir -p ~/.dbt && cp $(DBT_PROFILES_EXAMPLE) $(DBT_PROFILES_PATH)

bootstrap: profile ## Bootstrap that thang
	pdm install

test: ## Run dbt tests
	cd $(DBT_PROJECT_DIR) && pdm run dbt test

run: ## Run the dbt project
	cd $(DBT_PROJECT_DIR) && pdm run dbt run

build: ## Build the dbt project
	cd $(DBT_PROJECT_DIR) && pdm run dbt build

docs: ## Build and serve the latest dbt docs
	cd $(DBT_PROJECT_DIR) && pdm run dbt docs generate && pdm run dbt docs serve || true


help: ## Haaalp
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[$$()% a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

