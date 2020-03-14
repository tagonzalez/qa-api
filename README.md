# qa-api

## Start up
To start the application, all you need to do is enter the following commands in the terminal.

First, build the project
```
docker-compose build
```

Second, start postgres and create the database
```
docker-compose run phoenix mix ecto.create
```

Third, start the server
```
docker-compose up
```
