#!/bin/bash

# Kill any existing server on port 3000
lsof -ti:3000 | xargs kill -9 2>/dev/null

# Start the Python web server in the background
cd ~/projects
nohup python3 -m http.server 3000 > ~/projects/crm-server.log 2>&1 &

# Wait a moment for the server to start
sleep 1

# Open Safari to the CRM
open -a Safari http://localhost:3000/relationship-crm.html

echo "CRM server started and Safari opened!"
