# DEDALUS T3.2 Interoperability Layer
FIWARE stack with Security and Blockchain PoC

## Usage
Run containers with one of these commands:
- `$ docker compose up -d` or, e.g.,
- `$ PORT=8080 docker compose up -d` (to run the demo, e.g., from http://localhost:8080)

Stop containers with one of these commands:
- `$ docker compose down` or
- `$ docker rm -f $(docker ps -aq)` (⚠️ removes ALL Docker containers!)

### FIWARE MVP
Run and stop the FIWARE stack with one single context brocker with these commands:
- `$ docker compose -f minimal.compose.yaml up -d`
- `$ docker compose -f minimal.compose.yaml down`
