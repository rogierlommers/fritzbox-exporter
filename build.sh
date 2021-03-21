#!/bin/bash

docker build -t rogierlommers/fritz-exporter .
echo "docker push rogierlommers/fritz-exporter:latest"
