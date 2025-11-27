#!/bin/bash
# 0x401 Team Website Local Server Startup Script

echo "🚀 Starting 0x401 Team local server..."
echo "📁 Current directory: $(pwd)"

# Function to check if port is available
check_port() {
    local port=$1
    if lsof -Pi :$port -sTCP:LISTEN -t >/dev/null 2>&1; then
        return 1  # Port is in use
    else
        return 0  # Port is available
    fi
}

# Find available port starting from 3000
PORT=3000
while ! check_port $PORT; do
    PORT=$((PORT + 1))
    if [ $PORT -gt 3010 ]; then
        echo "❌ No available ports found between 3000-3010"
        exit 1
    fi
done

# Check Python version and start server
if command -v python3 &> /dev/null; then
    echo "✅ Using Python3 to start server"
    echo "🌐 Access URL: http://localhost:$PORT"
    echo "⏹️  Stop server: Ctrl+C"
    echo ""
    python3 -m http.server $PORT
elif command -v python &> /dev/null; then
    echo "✅ Using Python to start server"
    echo "🌐 Access URL: http://localhost:$PORT" 
    echo "⏹️  Stop server: Ctrl+C"
    echo ""
    python -m http.server $PORT
else
    echo "❌ Python not found, please install Python and try again"
    exit 1
fi