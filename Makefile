PSQL_USER := allie
PSQL_SUPERUSER := postgres
DB_NAME := universe
FILE_NAME := $(DB_NAME).sql

dump:
	pg_dump -cC --inserts -U $(PSQL_USER) $(DB_NAME) > $(FILE_NAME)

rebuild:
	psql -U $(PSQL_SUPERUSER) < $(FILE_NAME)

