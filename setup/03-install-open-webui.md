
# Install Open WebUI

Open WebUI is a browser-based interface that allows users to interact with local AI models in a chat interface similar to ChatGPT.

Instead of typing commands in the terminal, Open WebUI provides:

* chat interface
* model switching
* conversation history
* system prompts
* multi-model usage

Open WebUI runs inside a Docker container.

---

# What You Will Achieve

After completing this step you will be able to:

* run Open WebUI locally
* access the interface in your browser
* connect Open WebUI with Ollama
* interact with local models through a graphical interface

---

# Requirements

Before continuing ensure the following are installed:

* Ollama
* Docker

Verify them using:

```
ollama --version
docker --version
```

---

# Step 1 Ensure Ollama Server Is Running

Open WebUI communicates with Ollama using its API.

Start Ollama server:

```
ollama serve
```

The Ollama API will run at:

```
http://localhost:11434
```

Leave this running in the background.

---

# Step 2 Pull and Run Open WebUI Container

Run the following command:

```
docker run -d \
-p 3000:8080 \
--add-host=host.docker.internal:host-gateway \
-v open-webui:/app/backend/data \
--name open-webui \
ghcr.io/open-webui/open-webui:main
```

This command does the following:

* downloads Open WebUI image
* creates a container
* maps port 3000
* stores data in a Docker volume
* runs the container in the background

---

# Step 3 Verify Container Is Running

Check running containers:

```
docker ps
```

Example output:

```
CONTAINER ID   IMAGE
open-webui     ghcr.io/open-webui/open-webui
```

---

# Step 4 Open WebUI in Browser

Open your browser and visit:

```
http://localhost:3000
```

You should see the Open WebUI interface.

---

# Step 5 Create Admin Account

When opening Open WebUI for the first time you will be asked to create an account.

Enter:

* email
* password

This account becomes the administrator account.

---

# Step 6 Verify Ollama Connection

Open WebUI should automatically detect Ollama.

If models are installed they will appear in the model dropdown.

If not, they will appear once installed.

---

# Useful Docker Commands

View running containers:

```
docker ps
```

Stop Open WebUI:

```
docker stop open-webui
```

Start Open WebUI again:

```
docker start open-webui
```

Remove container:

```
docker rm -f open-webui
```

---

# Data Storage

Open WebUI stores:

* chats
* user accounts
* settings

Inside a Docker volume:

```
open-webui
```

This ensures data is not lost if the container restarts.

---

# Common Issues

## Port Already in Use

Error:

```
port 3000 already in use
```

Solution:

Stop the conflicting application or use another port.

Example:

```
-p 3001:8080
```

---

## Cannot Connect To Ollama

Check if Ollama is running:

```
ollama serve
```

Verify API:

```
http://localhost:11434
```

---

# Next Step

Continue with:

```
setup/04-connect-ollama-webui.md
```

In the next step we will ensure Open WebUI properly connects to the Ollama runtime and detects installed models.
