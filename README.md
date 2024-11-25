# Airflow Container
This repository contains the source code of installing python, airflow, selenium, requests, beautifulsoup, AWS CLI, pyspark on a single container.

# Implementation descriptions
1. config: adds custom log parser or add airflow_local_settings.py to configure cluster policy.
2. dags: puts your DAG files here.
3. logs: contains logs from task execution and scheduler.
4. plugins: puts your custom plugins here.
5. .env: sets up Linux host user ID.
6. docker-compose.yaml: defines and configures services for Airflow.
7. Dockerfile: builds Airflow image which contains apt packages, pip packages and embedded DAGs.
8. requirements_apt.txt: contains apt dependencies.
9. requirements_pip.txt: contains pip dependencies.
10. test_dag.py: defines an Airflow DAG for a workflow that runs tasks at specific intervals. 

# References
https://airflow.apache.org/docs/docker-stack/build.html

https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html



