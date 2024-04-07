#!/bin/bash

cat ./sql_queries/create_schema.sql | docker exec -i postgres psql -U admin -d test_db
cat ./sql_queries/create_people.sql | docker exec -i postgres psql -U admin -d test_db
cat ./sql_queries/create_returns.sql | docker exec -i postgres psql -U admin -d test_db
cat ./sql_queries/create_orders.sql | docker exec -i postgres psql -U admin -d test_db