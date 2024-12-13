#!/bin/bash
set -e

docker pull blazerrt86899/simple-python-flask-app:latest

docker run -d -p 5000:5000 blazerrt86899/simple-python-flask-app:latest