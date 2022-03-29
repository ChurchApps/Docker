#!/bin/sh
# This script checks if the container is started for the first time

CONTAINER_ALREADY_STARTED="CONTAINER_ALREADY_STARTED_PLACEHOLDER"
if [ ! -e /$CONTAINER_ALREADY_STARTED ]; then
    touch /$CONTAINER_ALREADY_STARTED
    echo "-- First container startup --"
    # place your script that you only want to run on first startup
    npm run dev
else
    echo "-- Not first container startup --"
    # script that should run the rest of the times (instances where you 
    # stop/restart containers)
    npm run dev
fi