# Hasura - SQL Server workshop

In this workshop, we'll cover the basics of using Hasura with SQL Server.

We'll cover:
1. Adding a SQL Server database as a source to Hasura
2. Tracking tables
3. Queries
4. Relationships
5. Subscriptions (realtime)
6. Permissions (fine-grained authorization)

## Pre-requisites

#### Option 1: Docker (local devlopment)
- Docker (https://docs.docker.com/desktop/)
- An existing SQL Server 2016+ database (optional)

**Run SQL Server locally**

Run the following command:
```
./run-sql-server.sh
```

#### Option 2: Cloud
- A Hasura Cloud account
- A SQL server 2016+ database available at a public endpoint

**Get a SQL Server database on the cloud**
Recommended for folks if you can't run Docker on your machine.

You can use Azure SQL Server on a free tier to get a free SQL server database
- Sign up for Microsoft Azure
- Get your free trial subscription
- Create a Azure SQL database

## Getting started

Clone this repo and `cd` into this directory

## Start Hasura

**Docker**
```
docker-compose up -d
```

**Cloud:**
Create a project on Hasura Cloud

## Add SQL Server as a data source

Head to the data section and add your SQL Server as a datasource using the ODBC connection string.

```
DRIVER={ODBC Driver 17 for SQL Server};SERVER=host.docker.internal,1433;Uid=SA;Pwd=SQ1p4ssword;Encrypt=no
```

## Import the sample database

**Docker**
- Copy the file into the docker container
- Run `sqlcmd` and import the SQL
```
docker cp chinook.sql <container-id>:/
docker exec -ti <container-id> bash
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'SQ1p4ssword' -i /chinook.sql
```

**Azure SQL:**
- Head to Query Editor
- Upload the `chinook.sql` file and run it

## Exercises:

1. Track tables
2. Query
3. Setup a relationship
4. Query
5. Setup relationships using foreign keys
6. Query it
7. Get all tracks by "AC/DC"
8. Set up a permission rule so that artists can fetch only their own artist data, albums and tracks
9. Query
10. Run a subscription
