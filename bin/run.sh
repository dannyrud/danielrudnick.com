#!/bin/bash

# Define the directories and ports
FRONTEND_DIR="./frontend"
BACKEND_DIR="./backend"
FRONTEND_PORT=3000
BACKEND_PORT=5001

# Function to start the servers
start_servers() {
    echo "Starting servers..."

    # Start the backend server
    (cd $BACKEND_DIR && npm start &) 
    echo "Backend server started on port $BACKEND_PORT."

    # Start the frontend server
    (cd $FRONTEND_DIR && npm start &)
    echo "Frontend server started on port $FRONTEND_PORT."

    echo "Servers are running."
}

# Function to stop the servers
stop_servers() {
    echo "Stopping servers..."

    # Stop the backend server
    BACKEND_PID=$(lsof -t -i:$BACKEND_PORT)
    if [ ! -z "$BACKEND_PID" ]; then
        kill -9 $BACKEND_PID
        echo "Backend server stopped."
    else
        echo "No backend process found on port $BACKEND_PORT."
    fi

    # Stop the frontend server
    FRONTEND_PID=$(lsof -t -i:$FRONTEND_PORT)
    if [ ! -z "$FRONTEND_PID" ]; then
        kill -9 $FRONTEND_PID
        echo "Frontend server stopped."
    else
        echo "No frontend process found on port $FRONTEND_PORT."
    fi
}

# Main script
if [ "$1" == "start" ]; then
    start_servers
elif [ "$1" == "stop" ]; then
    stop_servers
else
    echo "Usage: $0 {start|stop}"
    exit 1
fi
