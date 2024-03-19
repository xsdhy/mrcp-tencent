#!/bin/bash

echo "Running initial configuration script..."
/app/admin/change.sh


echo "Starting the service..."
/app/admin/start_server.sh

echo "Service started. Keeping container alive..."
tail -f /dev/null