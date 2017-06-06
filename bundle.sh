#!/bin/bash
set -e

rm -rfv dist/bundle.js dist/index.js

docker-compose up --build bundle

# in the container, the new files are owned by root:root
sudo chown -R $USER:$USER dist
