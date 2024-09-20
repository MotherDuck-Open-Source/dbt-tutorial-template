# dbt-tutorial-template

## Getting Started
1. Create a MotherDuck account.
2. Create a database inside of MotherDuck. This can be done with the command `create database {my_database};` from the MotherDuck UI.
3. Fork the `dbt-tutorial-template` repo in GitHub.
4. Generate an access token inside of MotherDuck and add it as a codespace secret inside of GitHub.
    - note: it is important that this token is called `MOTHERDUCK_TOKEN` so that it can be read by the MotherDuck DuckDB extension.
5. Open a codespace on your forked repo.
6. After it loads completely, _reload the window_ in order to make sure the dbt power user extension has access to your md environment.
7. run `dbt init` to create your dbt project.
8. Follow along on [dbt-tutorial](https://github.com/MotherDuck-Open-Source/dbt-tutorial).