#!/bin/bash

echo "Running initial configuration script..."
/app/unimrcp/admin/change.sh


echo "Starting the service..."
/app/unimrcp/admin/start_server.sh

echo "Service started. Keeping container alive..."
tail -f /dev/null