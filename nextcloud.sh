#!/bin/bash

# Start the PostgreSQL container
sudo docker start nextcloud-postgres

# Remove the existing Nextcloud container, if it exists
sudo docker rm -f nextcloud

# Run the Nextcloud container
sudo docker run -d \
  --name nextcloud \
  --link nextcloud-postgres:postgres \
  -e POSTGRES_DB=nextcloud \
  -e POSTGRES_USER=florin \
  -e POSTGRES_PASSWORD=florin12er \
  -p 9081:80 \
  -v nextcloud-data:/var/www/html \
  nextcloud

