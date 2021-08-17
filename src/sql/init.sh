#!/bin/bash

set -e
set -u

echo "-------- Sql initialization in process --------"

echo "---- Creating databases..."
psql -v ON_ERROR_STOP=1 --username "postgres" -f /data/databases.sql
echo "---- Databases created!"


echo "---- Creating tables and adding data..."

psql -v ON_ERROR_STOP=1 --username "postgres" --dbname "Sales" -f /data/users.sql
echo "---- Table user finished!"

psql -v ON_ERROR_STOP=1 --username "postgres" --dbname "Sales" -f /data/invoices.sql
echo "---- Table invoice finished!"

psql -v ON_ERROR_STOP=1 --username "postgres" --dbname "Sales" -f /data/customerCreditCards.sql
echo "---- Table customerCreditCard finished!"

echo "-------- Sql initialization finished --------"