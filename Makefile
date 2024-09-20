build:
	pip install --upgrade pip
	pip install -r requirements.txt
	wget https://github.com/duckdb/duckdb/releases/download/v1.1.0/duckdb_cli-linux-amd64.zip
	unzip duckdb_cli-linux-amd64.zip
	rm duckdb_cli-linux-amd64.zip