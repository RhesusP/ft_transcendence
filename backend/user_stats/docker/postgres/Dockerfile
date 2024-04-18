FROM postgres:bullseye

COPY ./docker/postgres/init.sql /docker-entrypoint-initdb.d/

EXPOSE $SQL_PORT