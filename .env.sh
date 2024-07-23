#!/bin/bash
# Project namespace (defaults to the current folder name if not set)
#export COMPOSE_PROJECT_NAME=myproject


# Password for the 'elastic' user (at least 6 characters)
export ELASTIC_PASSWORD=Admin123


# Password for the 'kibana_system' user (at least 6 characters)
export KIBANA_PASSWORD=Admin123


# Version of Elastic products
export STACK_VERSION=8.9.2


# Set the cluster name
export CLUSTER_NAME=demo


# Set to 'basic' or 'trial' to automatically start the 30-day trial
export LICENSE=basic
#LICENSE=trial


# Port to expose Elasticsearch HTTP API to the host
export ES_PORT=9200


# Port to expose Kibana to the host
export KIBANA_PORT=5601


# Increase or decrease based on the available host memory (in bytes)
export ES_MEM_LIMIT=4294967296
export KB_MEM_LIMIT=1073741824
export LS_MEM_LIMIT=1073741824

# SAMPLE Predefined Key only to be used in POC environments
export ENCRYPTION_KEY=HVer/JeYtrnpH54nXSjfCjliwZyQy2q8Fg9XEfx1Y8I=
