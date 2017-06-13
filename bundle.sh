#!/bin/bash
set -e

./clean.sh

docker-compose up --build bundle

# in the container, the new files are owned by root:root
sudo chown -R $USER:$USER dist
