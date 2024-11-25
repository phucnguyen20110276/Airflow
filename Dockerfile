FROM apache/airflow:2.10.3

# Install pip packages with requirements_pip.txt
COPY requirements_pip.txt /
RUN pip install --no-cache-dir "apache-airflow==${AIRFLOW_VERSION}" -r /requirements_pip.txt

# Install apt packages with requirements_apt.txt
COPY requirements_apt.txt /
USER root
RUN apt-get update \
  && xargs -a /requirements_apt.txt apt-get install -y --no-install-recommends \
  && apt-get autoremove -yqq --purge \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
USER airflow

# Embedding DAGs
COPY --chown=airflow:root test_dag.py /opt/airflow/dags
