# DEDALUS T3.2 Interoperability Layer
FIWARE stack with Security and Blockchain PoC

## Project with Keycloak

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
   docker-compose -f keycloak.compose.yaml up -d
   ```
   This will start all the required services, including Keycloak and the application components.

2. **Stop the Containers**:
   When you need to stop all services, run:
   ```bash
   docker-compose -f keycloak.compose.yaml down
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
