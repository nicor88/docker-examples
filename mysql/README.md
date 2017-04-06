# MySQL 5.7

## Run Instance with Docker-Compose
<pre>docker-compose up -d
</pre>

## Run Container
<pre>docker run --detach --env MYSQL_ROOT_PASSWORD=dev --env MYSQL_DATABASE=DEV --publish 3306:3306 mysql:5.6</pre>
