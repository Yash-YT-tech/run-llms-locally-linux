
#!/bin/bash

echo "-------------------------------------"
echo "Starting Local AI System"
echo "-------------------------------------"

echo ""
echo "Step 1: Checking Docker service..."

# Start Docker if not running
if ! systemctl is-active --quiet docker
then
    echo "Docker is not running. Starting Docker..."
    sudo systemctl start docker
else
    echo "Docker is already running."
fi

echo ""
echo "Step 2: Checking Ollama server..."

# Check if Ollama is running
if pgrep -x "ollama" > /dev/null
then
    echo "Ollama server already running."
else
    echo "Starting Ollama server..."
    ollama serve &
fi

sleep 3

echo ""
echo "Step 3: Checking Open WebUI container..."

# Check if Open WebUI container exists
if docker ps -a --format '{{.Names}}' | grep -q '^open-webui$'; then

    # If container exists but stopped
    if [ "$(docker inspect -f '{{.State.Running}}' open-webui)" = "false" ]; then
        echo "Starting existing Open WebUI container..."
        docker start open-webui
    else
        echo "Open WebUI container already running."
    fi

else
    echo "Open WebUI container not found."
    echo "Run setup/03-install-open-webui.md first."
fi

echo ""
echo "-------------------------------------"
echo "Local AI System Started Successfully"
echo "-------------------------------------"

echo ""
echo "Access Web Interface:"
echo "http://localhost:3000"

echo ""
echo "Ollama API:"
echo "http://localhost:11434"

echo ""
echo "You can now use your local AI models."
