#!/bin/bash

set -x
set -e

VENV=`pipenv --venv`
PROJ_DIR=`pwd -P`
DELIVRABLE=~/Desktop/lambda-experiments.zip

# Clean old one
rm -f ${DELIVRABLE}

# Add the whole virtual environment to the ZIP file
cd ${VENV}/lib/python3.6/site-packages
zip -r9 ${DELIVRABLE} ./*

# Add our scripts
cd ${PROJ_DIR}
zip -r9 ${DELIVRABLE} *.py

