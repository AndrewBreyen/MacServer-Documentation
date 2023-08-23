#!/bin/bash

# Get the PID of the process using port 8000
PID=$(lsof -t -i :8000)

if [ -n "$PID" ]; then
  echo "Process with PID $PID is using port 8000. Forcefully terminating..."
  kill $PID
  echo "Process terminated."
else
  echo "No process found using port 8000."
fi
