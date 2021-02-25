# Docker
Docker compose images for LCS projects

## Prod Environment Setup
1- Clone the project
2- Copy sample.env to .env and edit the variables as you wish

### Additional Commands
After cloning this repo to a local directory, you can either use docker-compose to start all the microservices of a project, or you can use docker commands in each directory to start each docker microservice from its docker file.

* Build and start the dockers the first time: `docker-compose up -d`
* Stop the docker container: `docker-compose stop`
* Restart the docker container: `docker-compose start`
* Reset everything except MySql: `docker-compose down` followed by `docker-compose up -d`
* Reset everything including MySql: `docker-compose down -v` followed by `docker-compose up -d`
* Completely reinstall everything: `docker-compose down --rmi local` followed by `docker-compose up -d`

## Ports Used
|Type|Category|Component|Port|
|---|---|---|---|
|Api|Core|AccessApi|8082|
|||MembershipApi|8083|
|||GivingApi|8084|
|||AttendanceApi|8085|
||B1|B1Api|8300|
||StreamingLive|StreamingLiveApi|8200|
|||StreamingLiveChat|8201|
|Web|ChurchApps|ChurchAppsWeb|3400|
|||AccountsApp|3401|
||B1|B1Admin|3301|
||Chums|ChumsWeb|3100|
|||ChumsApp|3101|
||StreamingLive|StreamingLiveWeb|3200|
||StreamingLive|StreamingLiveApp|3201|
|Mobile|B1|B1App|19000-19006|
||Chums|ChumsCheckin|8080|
