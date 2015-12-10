FROM postgres:9.4

RUN mkdir -p /user/src/app/data

# https://hub.docker.com/_/postgres/
ENV POSTGRES_USER=platform
ENV POSTGRES_PASSWORD=QdYx3D5y
# save the data inside the container so we can ship it to dockerhub
ENV PGDATA=/user/src/app/data

# ADD init-database.sh /docker-entrypoint-initdb.d/

