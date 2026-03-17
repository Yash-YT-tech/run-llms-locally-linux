
# Install Ollama

Ollama is the core engine used to run Large Language Models (LLMs) locally.

It handles:

* downloading models
* loading models into memory
* running inference
* providing an API for applications like Open WebUI

Without Ollama, the local AI system cannot run models.

---

# What You Will Achieve

After completing this guide you will be able to:

* install Ollama on Linux
* start the Ollama server
* verify the installation
* run your first local AI model

---

# Supported Systems

Ollama works on most modern Linux distributions including:

* Ubuntu
* Debian
* Arch Linux
* Fedora
* Linux Mint

Recommended system requirements:

Minimum:

* 8 GB RAM
* 20 GB free disk space

Recommended:

* 16 GB RAM
* SSD storage

---

# Step 1 Install Ollama

Open a terminal and run the following command:

```
curl -fsSL https://ollama.com/install.sh | sh
```

This script will automatically:

* download Ollama
* install required dependencies
* configure the runtime

Installation usually takes **less than 1 minute**.

---

# Step 2 Verify Installation

After installation finishes, verify Ollama is installed correctly.

Run:

```
ollama --version
```

Example output:

```
ollama version 0.1.xx
```

If you see a version number, the installation succeeded.

---

# Step 3 Start Ollama Server

Ollama runs a local server which allows other applications to communicate with models.

Start the server with:

```
ollama serve
```

This command launches the Ollama runtime.

The server will run on:

```
http://localhost:11434
```

---

# Step 4 Verify Ollama API

Open a browser and visit:

```
http://localhost:11434
```

If Ollama is running correctly you should see a response.

You can also test it using curl:

```
curl http://localhost:11434
```

---

# Step 5 Run Your First Model

Run a small test model:

```
ollama run tinyllama
```

If the model is not installed, Ollama will automatically download it.

The download size is approximately **600MB**.

Once downloaded you can interact with the model directly in the terminal.

Example prompt:

```
Explain what a large language model is.
```

---

# Step 6 List Installed Models

To see all installed models run:

```
ollama list
```

Example output:

```
NAME             SIZE
tinyllama        637 MB
```

---

# Stopping Ollama Server

If you started Ollama manually with `ollama serve`, stop it using:

```
CTRL + C
```

---

# Common Issues

## Ollama command not found

Restart the terminal and try again.

## Port already in use

Another Ollama instance may already be running.

Check with:

```
ps aux | grep ollama
```

Then stop it and restart the server.

---

# Next Step

Once Ollama is installed, continue with:

```
setup/02-install-docker.md
```

Docker will be used to run the Open WebUI interface.
