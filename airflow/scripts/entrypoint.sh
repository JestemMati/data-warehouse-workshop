#!/usr/bin/env bash

pip install --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib oauth2client 

airflow db init

airflow users create \
    --username admin \
    --role Admin \
    --password admin \
    --email student@uek.krakow.pl \
    --firstname student \
    --lastname student

airflow webserver