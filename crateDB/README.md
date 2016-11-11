# CrateDB
CrateDB is a NoSQL DB with features standard SQL.
Main features:
*   Default Indexing
*   Masterless
*   Made for Microservices
*   Scale horizontally

## Run Crate with 2 nodes
<pre>
# Pull crate Image from DockerHub
docker pull crate
# Run a container with a random ports (remember that crate has the autodiscovery activated)
docker run -P -d crate
# Run a container with specific ports
docker run -d -p 4200:4200 -p 4300:4300 crate
</pre>

Connect to http://DOCKER_IP:4200/admin
