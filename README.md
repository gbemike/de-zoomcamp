# de-zoomcamp

Module: Dockerized PostgreSQL Database with Data Ingestion

This module sets up a Dockerized PostgreSQL database along with scripts for ingesting and uploading data into a postgres database.

# Docker Compose Configuration

The docker-compose.yml file defines two services:

    pgdatabase: PostgreSQL database service configured with PostgreSQL version 13.
    pgadmin: pgAdmin web interface for managing the PostgreSQL database.

The database service (pgdatabase) is exposed on port 5432, while the pgAdmin interface (pgadmin) is exposed on port 8080.

# Dockerfile

The Dockerfile is used to build the Python environment required for data ingestion and upload scripts. It sets up the working directory, installs Python dependencies specified in requirements.txt, and copies the necessary scripts into the container. Finally, it sets the entrypoint to run the master script (master_script.sh).

# Scripts

- ingest_data.py: Python script for ingesting CSV data into the PostgreSQL database. It reads data from a CSV file specified by the provided URL and inserts it into the database.

- upload_data.py: Python script for uploading CSV data into the PostgreSQL database. Similar to ingest_data.py, it reads data from a CSV file specified by the URL and inserts it into the database.

- ingest_script.sh: Shell script for invoking the data ingestion script (ingest_data.py). It specifies the necessary parameters such as database credentials, table name, and CSV URL.

- upload_script.sh: Shell script for invoking the data upload script (upload_data.py). It also specifies the required parameters like database credentials, table name, and CSV URL.

- master_script.sh: Master shell script that calls both the ingestion and upload scripts in sequence.

# Requirements

The requirements.txt file lists the Python dependencies required for the scripts to run. It includes packages such as Pandas, SQLAlchemy, psycopg2, and others.

# Instructions

- Ensure Docker and Docker Compose are installed on your system.
- Run docker-compose up in the directory containing the docker-compose.yml file to start the PostgreSQL database and pgAdmin services, once the services are up and running, you can access pgAdmin at http://localhost:8080 in your web browser
- Ensure that the Dockerfile and other necessary files are in the same directory where the commands are executed. To build the docker image we run the following command:
    - `docker build -t name:tag .`
- To run the container we run:
    - `docker run -it name:tag`