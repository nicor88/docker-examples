# Kafka

## Start
<pre># start docker image
docker-compose up
</pre>

Kafka will be available in localhost:9092
If you want to use link Kafka to another service inside Docker,
you should put as `ADVERTISED_HOST` the IP of the container where Kafka is running.
