# Docker
Docker compose images for LCS projects

We currently have 3 Main projects : Accounts , CHUMS , StreamingLive.

Accounts and CHUMS are inside same docker folder. 

Inside each project , there is multiple microservices that you can start using docker-compose in there respective folders.

After cloning this repo to a local directory, you can either use docker-compose to start all the microservices of a project, or you can use docker commands in each directory to start each docker microservice from its docker file.

<b>docker-compose</b >

to build and start the dockers the first time :
<pre> docker-compose up -d </pre> 

To stop the dockers :
<pre> docker-compose stop</pre>

To restart the dockers :
<pre> docker-compose start</pre>

To reset the dockers content exept the mysql :
<pre> docker-compose down</pre>
you can start the docker-compose up -d after that

To reset the dockers content including the mysql :
<pre> docker-compose down -v</pre>
you can start the docker-compose up -d after that

You can use VScode to attach to any docker, you need to install first the Microsoft extension : "Remote-Containers" After that you can attach VScode to the running container and start developing on it. 

