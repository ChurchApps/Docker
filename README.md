# Docker
Docker compose images for LCS projects

## Dev Environment Setup
1. Browse to the /Containers/Dev folder and then to the project you wish to work on (Chums, StreamingLive, etc)
2. Run `docker-compose up -d` to create the environment.  This will take about 5 minutes the first time.
3. Refer to the list of ports below and open the main project in your browser (http://localhost:3100 - ChumsWeb)

### Connecting VSCode
1. Install "Docker" and "Remote Containers" extension.
2. Expand the Docker folder on the left of VSCode
3. Expand the container you are using to see a list of apps.  Right click the desired app and select "Attach Visual Studio Code".  This will launch a new instance of VSCode tied to that app.
4. In the files section of the new VSCode instance, select "Open Folder" and enter "/app/"
5. To view console output, in the original VSCode instance, right click on the app and select "View Logs"

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
