sleep 30s

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P @Password1 -d master -i create-db.sql
