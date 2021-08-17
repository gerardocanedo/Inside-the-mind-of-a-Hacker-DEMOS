# syntax=docker/dockerfile:1
FROM postgres:13.3

WORKDIR /data 
COPY *.sql .
COPY init.sh /docker-entrypoint-initdb.d/