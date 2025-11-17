#!/bin/bash

# Script to stop both frontend and backend servers
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${RED}Stopping all servers...${NC}"

# Kill processes on port 3000 (frontend)
if lsof -ti:3000 > /dev/null 2>&1; then
    echo "Stopping Frontend (port 3000)..."
    lsof -ti:3000 | xargs kill -9 2>/dev/null
    echo "Frontend stopped."
else
    echo "No process found on port 3000."
fi

# Kill processes on port 3001 (backend)
if lsof -ti:3001 > /dev/null 2>&1; then
    echo "Stopping Backend (port 3001)..."
    lsof -ti:3001 | xargs kill -9 2>/dev/null
    echo "Backend stopped."
else
    echo "No process found on port 3001."
fi

echo -e "${RED}All servers stopped.${NC}"
