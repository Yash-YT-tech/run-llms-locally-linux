
#!/bin/bash

echo "-------------------------------------"
echo "Local AI System Diagnostic Tool"
echo "-------------------------------------"

echo ""
echo "Checking Docker installation..."

if command -v docker &> /dev/null
then
    echo "Docker is installed."
else
    echo "Docker is NOT installed."
fi

echo ""
echo "Checking Docker service..."

if systemctl is-active --quiet docker
then
    echo "Docker service is running."
else
    echo "Docker service is NOT running."
fi

echo ""
echo "Checking Ollama installation..."

if command -v ollama &> /dev/null
then
    echo "Ollama is installed."
else
    echo "Ollama is NOT installed."
fi

echo ""
echo "Checking Ollama server..."

if pgrep -x "ollama" > /dev/null
then
    echo "Ollama server is running."
else
    echo "Ollama server is NOT running."
fi

echo ""
echo "Checking Open WebUI container..."

if docker ps --format '{{.Names}}' | grep -q '^open-webui$'
then
    echo "Open WebUI container is running."
else
    echo "Open WebUI container is NOT running."
fi

echo ""
echo "Checking installed models..."

if command -v ollama &> /dev/null
then
    ollama list
else
    echo "Cannot list models because Ollama is not installed."
fi

echo ""
echo "Checking important ports..."

echo "Port 11434 (Ollama API):"
ss -tuln | grep 11434 || echo "Port 11434 not active"

echo ""

echo "Port 3000 (Open WebUI):"
ss -tuln | grep 3000 || echo "Port 3000 not active"

echo ""
echo "-------------------------------------"
echo "System Check Complete"
echo "-------------------------------------"
