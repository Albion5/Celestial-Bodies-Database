PSQL_USER := allie
DB_NAME := universe
SCHEMA := $(DB_NAME).sql

connect:
	psql --dbname=$(DB_NAME)

dump:
	pg_dump -cC --inserts -U $(PSQL_USER) $(DB_NAME) > $(SCHEMA)

rebuild:
	psql -U $(PSQL_USER) -d postgres -f $(SCHEMA)

