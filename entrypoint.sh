#!/bin/bash

cd /app/unimrcp/admin
echo "Running initial configuration script..."
./change.sh


echo "Starting the service..."
./start_server.sh

echo "Service started. Keeping container alive..."
tail -f /dev/null