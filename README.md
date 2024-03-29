# Docker

Docker compose images for LCS projects.

The CoreApis container is needed for all projects. Start it first. Then start the project you wish to work on.

## Dev Environment Setup

1. Browse to the /Containers/Dev folder and then to the project you wish to work on (CoreApis, Chums, etc)
2. Run `docker-compose up -d` to create the environment. This will take about 5 minutes the first time.
3. Refer to the list of ports below and open the main project in your browser (http://localhost:3101 - ChumsApp)

### Connecting VSCode

1. Install "Docker" and "Remote Containers" extension.
2. Expand the Docker folder on the left of VSCode
3. Expand the container you are using to see a list of apps. Right click the desired app and select "Attach Visual Studio Code". This will launch a new instance of VSCode tied to that app.
4. In the files section of the new VSCode instance, select "Open Folder" and enter "/app/"
5. To view console output, in the original VSCode instance, right click on the app and select "View Logs"

[![Api Dev Setup](https://img.youtube.com/vi/M81I6gmKqdI/0.jpg)](https://www.youtube.com/watch?v=M81I6gmKqdI)

## Prod Environment Setup

1. Clone the project and go to the /Containers/Prod folder
2. Copy sample.env to .env and edit the variables
3. Optional - The compose file is for the full ChurchApps stack. If you do not wish to install all the components, simply comment out the ones you do not need.

### .env file breakdown

- `ENVIRONMENT=dev` set the environment as dev or prod
- `MYSQL_ROOT_PASSWORD=123456` set the Mysql password
- `MYSQL_USERNAME=root` the username for the Mysql
- `MYSQL_HOSTNAME=fs-mysql` the hostname for your Mysql server, leave default value if you dont want to use an external Mysql
- `JWT_SECRET_KEY=jsonwebtockenkey` make up a secret phrase for encrypting keys
- `JWT_EXPIRATION=2 days`
- `PROTOCOL=http` http or https
- `DOMAIN=localhost` your domain name
- `GOOGLE_ANALYTICS=UA-123456789-1` your google analytics key - optional
- `SUPPORT_EMAIL=support@example.com` the email for support

### Additional Commands

After cloning this repo to a local directory, you can either use docker-compose to start all the microservices of a project, or you can use docker commands in each directory to start each docker microservice from its docker file.

- Build and start the dockers the first time: `docker-compose up -d`
- Stop the docker container: `docker-compose stop`
- Restart the docker container: `docker-compose start`
- Reset everything except MySql: `docker-compose down` followed by `docker-compose build --no-cache` and `docker-compose up -d`
- Reset everything including MySql: `docker-compose down -v` followed by `docker-compose build --no-cache` and `docker-compose up -d`
- Completely reinstall everything: `docker-compose down --rmi local` followed by `docker-compose build --no-cache` and `docker-compose up -d`

### High Memory Usage

Running the full stack can require a lot of RAM. If that is an issue, you can set a max memory limit for WSL2 in Windows by creating a `C:\Users\[yourprofile]\.wslconfig` file and adding these two lines (using any memory limit you choose):

```
[wsl2]
memory=6GB
```

Reboot after making the changes.  
Note: If you restrict the memory usage too much, the containers may be slow to start an time out on initial started. Simply starting the failed ones individually should resolve this though.

## Ports Used

| Type     | Category | Component             | Port |
| -------- | -------- | --------------------- | ---- |
| CoreApi  | Core     | ContentApi            | 8082 |
|          |          | MembershipApi         | 8083 |
|          |          | GivingApi             | 8084 |
|          |          | AttendanceApi         | 8085 |
|          |          | MessagingApi (REST)   | 8086 |
|          |          | MessagingApi (Socket) | 8087 |
|          |          | ReportingApi          | 8089 |
| Projects | B1       | B1App                 | 3301 |
|          | Chums    | ChumsApp              | 3101 |
|          | Lessons  | LessonsApi            | 8090 |
|          |          | LessonsApp            | 3501 |
|          | Brochure | ChurchAppsWeb         | 3400 |
| Content  |          |                       | 3402 |
