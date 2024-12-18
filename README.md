[![HYPERRIDE Logo](https://hyperride.eu/wp-content/uploads/2021/03/HYPERRIDE_4C_transp.png)](https://hyperride.eu)

# Final Open ICT Platform (draft)
Developed and maintained by:

[![ENG Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Engineering_logo.png/200px-Engineering_logo.png)](https://www.eng.it).

### Powered by FIWARE application.

[![FIWARE Banner](https://fiware.github.io/tutorials.PEP-Proxy/img/fiware.png)](https://www.fiware.org/developers)

[![FIWARE Security](https://nexus.lab.fiware.org/repository/raw/public/badges/chapters/security.svg)](https://github.com/FIWARE/catalogue/blob/master/security/README.md)
[![License: MIT](https://img.shields.io/github/license/fiware/tutorials.PEP-Proxy.svg)](https://opensource.org/licenses/MIT)
[![Support badge](https://img.shields.io/badge/tag-fiware-orange.svg?logo=stackoverflow)](https://stackoverflow.com/questions/tagged/fiware)
<br/> [![Documentation](https://img.shields.io/readthedocs/fiware-tutorials.svg)](https://fiware-tutorials.rtfd.io)

This repository contains the FIWARE stack developed, used and maintained by ENG for the HYPERRIDE EU co-funded Projects. 
It uses the FIWARE [Wilma](https://fiware-pep-proxy.rtfd.io/) PEP Proxy combined with **Keyrock** to secure
access to endpoints exposed by FIWARE generic enablers. Users (or other actors) must log-in and use a token to gain
access to services. The application code created
[here](https://github.com/FIWARE/tutorials.Securing-Access) is expanded to authenticate users throughout a
distributed system.

[cUrl](https://ec.haxx.se/) commands are used throughout to access the **Orion Context Broker**, **Keyrock** and **Wilma** REST APIs -

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/6b143a6b3ad8bcba69cf)
[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/engsep/HYPERRIDE/tree/D5.6)

# System Tested
- CPU: 16+ core
- RAM: 32+ GB
- HD: 20+ GB
- Ubuntu 18+

## Windows and Mac support

Windows and Mac have not been tested, but it should be supported, thanks to the adoption of the [Docker](https://www.docker.com) technology.
Windows users may also download [cygwin](http://www.cygwin.com/) to provide a command-line functionality similar to a Linux distribution on Windows.
Similarily, also Mac users can take advantage of emulation tools. This is the support methods suggested and derived directly from FIWARE. 

# Prerequisites

## Docker

To keep things simple all the HYPERRIDE ICT Platform components run using [Docker](https://www.docker.com). **Docker** is a container
technology which allows to different components isolated into their respective environments.

-   To install Docker on Windows follow the instructions [here](https://docs.docker.com/docker-for-windows/)
-   To install Docker on Mac follow the instructions [here](https://docs.docker.com/docker-for-mac/)
-   To install Docker on Linux follow the instructions [here](https://docs.docker.com/install/)

**Docker Compose** is a tool for defining and running multi-container Docker applications. A
[YAML file](https://raw.githubusercontent.com/Fiware/tutorials.Identity-Management/master/docker-compose.yml) is used
configure the required services for the application. This means all container services can be brought up in a single
command. Docker Compose is installed by default as part of Docker for Windows and Docker for Mac, however Linux users
will need to follow the instructions found [here](https://docs.docker.com/compose/install/)

You can check your current **Docker** and **Docker Compose** versions using the following commands:

```console
docker-compose -v
docker version
```

Please ensure that you are using Docker version 20.10 or higher and Docker Compose 1.29 or higher and upgrade if necessary.

# Final release notes

## Powered by Keycloak

The final release of the Open ICT Platform of the HYPERRIDE project uses Keycloak as IdM in replacement of Keyrock, to address D5.7 outcomes in terms of enhanced security.
For any reference to the APIs for the usage of the ICT Platform, please refer to the guide available [here](https://github.com/engsep/HYPERRIDE).

### Project Structure
- **`configs/`**: Contains configuration files such as `default.conf`.
- **`scripts/`**: Includes scripts for testing the project or automating tasks.
  - Example scripts:
    - **`test-curls.sh`**: Script with `curl` commands to test public and protected endpoints.
    - **`read.sh`**: Script to read entities with a JWT token using Keycloak.

## How to Start with Keycloak

### Prerequisites
1. **Docker and Docker Compose**: Ensure Docker and Docker Compose are installed on your system.

### Steps to Start
1. **Start the Containers**:
   ```bash
   docker-compose up -d
   ```
   This will start all the required services, including Keycloak and the application components.

2. **Stop the Containers**:
   When you need to stop all services, run:
   ```bash
   docker-compose down
   ```

## Testing the Application
Run the `test-curls.sh` script, which includes both a public and a protected `curl` request:
```bash
./scripts/test-curls.sh
```

## Additional Notes
- **Keycloak Management**: Access the Keycloak admin console at [http://localhost:8080](http://localhost:8080) with the admin credentials provided in your `.env` file or `docker-compose.yml`.
- **Logs and Debugging**: Check the logs of the Docker containers for troubleshooting:
  ```bash
  docker logs <container-name>
  ```
