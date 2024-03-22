## Make a dump of the db

The following command will save the commands to rebuild the db in universe.sql:\
`pg_dump -cC --inserts -U allie universe > universe.sql` 

## Rebuild the db

Enter the following command in a terminal where the .sql file is:\
`psql -U postgres < universe.sql` 