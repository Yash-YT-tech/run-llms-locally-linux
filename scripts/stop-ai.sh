
#!/bin/bash

echo "-------------------------------------"
echo "Stopping Local AI System"
echo "-------------------------------------"

echo ""
echo "Step 1: Stopping Open WebUI container..."

# Check if container exists
if docker ps -a --format '{{.Names}}' | grep -q '^open-webui$'; then

    # Check if container is running
    if [ "$(docker inspect -f '{{.State.Running}}' open-webui)" = "true" ]; then
        docker stop open-webui
        echo "Open WebUI stopped."
    else
        echo "Open WebUI container is already stopped."
    fi

else
    echo "Open WebUI container not found."
fi

echo ""
echo "Step 2: Stopping Ollama server..."

# Check if Ollama process is running
if pgrep -x "ollama" > /dev/null
then
    pkill ollama
    echo "Ollama server stopped."
else
    echo "Ollama server not running."
fi

echo ""
echo "-------------------------------------"
echo "Local AI System Stopped"
echo "-------------------------------------"
