## Build the image

<pre>docker build --rm=True --tag "nicor88/caravel:latest" . 
</pre>

## Run caravel (1st Option)
<pre>
docker-compose up
</pre>

## Run caravel (2nd Option)

<pre>
docker run -d -p 8088:8088 nicor88/caravel
</pre>

## Credentials

### Admin
User: admin
Password: admin
