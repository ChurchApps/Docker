# Docker
Docker compose images for LCS projects

After cloning this repo to a local directory, you can either use docker-compose to start all the dockers, or you can use docker commands in each directory to start each docker from its docker file.

##docker-compose

to build and start the dockers the first time :
 docker-compose up -d 

To stop the dockers :
 docker-compose stop

To restart the dockers :
 docker-compose start

To reset the dockers content exept the mysql :
 docker-compose down
you can start the docker-compose up -d after that

To reset the dockers content including the mysql :
 docker-compose down -v
you can start the docker-compose up -d after that

You can use VScode to attach to any docker, you need to install first the Microsoft extension : "Remote-Containers" After that you can attach VScode to the running container and start developing on it. 

