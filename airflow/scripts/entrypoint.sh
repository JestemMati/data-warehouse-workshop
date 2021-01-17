#!/usr/bin/env bash

airflow db init

airflow users create \
    --username admin \
    --role Admin \
    --password admin \
    --email student@uek.krakow.pl \
    --firstname student \
    --lastname student

airflow webserver