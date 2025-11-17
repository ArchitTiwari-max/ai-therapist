#!/bin/bash

# Script to run both frontend and backend together
# Colors for better visibility
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${GREEN}Starting AI Therapist Application...${NC}"
echo ""

# Kill any existing processes on ports 3000 and 3001
echo -e "${BLUE}Cleaning up existing processes...${NC}"
lsof -ti:3000 | xargs kill -9 2>/dev/null
lsof -ti:3001 | xargs kill -9 2>/dev/null
sleep 1

# Start backend in background
echo -e "${BLUE}Starting Backend on http://localhost:3001${NC}"
cd backend && npm run dev > ../backend.log 2>&1 &
BACKEND_PID=$!

# Wait a bit for backend to start
sleep 3

# Start frontend in background
echo -e "${BLUE}Starting Frontend on http://localhost:3000${NC}"
cd ai-therapist-agent && npm run dev > ../frontend.log 2>&1 &
FRONTEND_PID=$!

echo ""
echo -e "${GREEN}Both servers are starting...${NC}"
echo -e "${BLUE}Backend:${NC}  http://localhost:3001 (PID: $BACKEND_PID)"
echo -e "${BLUE}Frontend:${NC} http://localhost:3000 (PID: $FRONTEND_PID)"
echo ""
echo -e "Logs are being written to:"
echo -e "  - backend.log"
echo -e "  - frontend.log"
echo ""
echo -e "To view logs in real-time:"
echo -e "  ${BLUE}tail -f backend.log${NC}"
echo -e "  ${BLUE}tail -f frontend.log${NC}"
echo ""
echo -e "To stop both servers:"
echo -e "  ${BLUE}kill $BACKEND_PID $FRONTEND_PID${NC}"
echo -e "  or run: ${BLUE}./stop-all.sh${NC}"
echo ""

# Wait for both processes
wait $BACKEND_PID $FRONTEND_PID
