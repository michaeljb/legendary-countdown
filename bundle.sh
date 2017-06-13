#!/bin/bash
set -e

rm -rfv dist/bundle.js
rm -rfv dist/index.html

docker-compose up --build bundle

# in the container, the new files are owned by root:root
sudo chown -R $USER:$USER dist
