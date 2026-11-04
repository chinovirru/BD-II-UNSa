#!/bin/bash
set -e

psql -U postgres <<-EOSQL
	CREATE DATABASE northwind;
    CREATE DATABASE dellstore;
EOSQL

psql -U postgres -d northwind -f /dumps/northwind_dump
psql -U postgres -d dellstore -f /dumps/dellstore_dump