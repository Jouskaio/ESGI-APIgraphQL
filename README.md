# ESGI - API GraphQL

## Installation

1. Start database. You can use docker to create a container with a postgres database with the following command: `docker run --name esgi-graphql -e POSTGRES_PASSWORD=postgres -d -p 5432:5432 postgres`
2. You can access to your postgres shell using `docker exec -it -u postgres esgi-graphql psql` and create your database with `CREATE DATABASE esgi_graphql;`. To access to your database do `\c esgi-graphql` and to list tables do `\dt`
3. Get public IP of your container with `docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' esgi-graphql`, it will be your POSTGRES_HOST value.
4. Set the database accessible from the outside with the following command `psql -h 127.17.0.2 -U postgres -d esgi-graphql` where 127.17.0.2 is your public IP (not inside the container)
4. Install dependencies with `npm install`