# 🚀 Run LLMs Locally on Linux

![License](https://img.shields.io/badge/license-MIT-green)
![Platform](https://img.shields.io/badge/platform-Linux-blue)
![Runtime](https://img.shields.io/badge/runtime-Ollama-orange)
![Interface](https://img.shields.io/badge/interface-OpenWebUI-purple)
![Container](https://img.shields.io/badge/container-Docker-blue)

### Build Your Own Local AI Stack (Ollama + Open WebUI + Docker)

Run powerful **open-source AI models locally** on your Linux machine without using cloud APIs.

This guide helps beginners set up a **complete local AI environment** using:

* Ollama
* Docker
* Open WebUI

---

# 📑 Table of Contents

* [📌 Project Overview](#-project-overview)
* [🏗 System Architecture](#-system-architecture)
* [📸 Screenshots](#-screenshots)
* [🧰 Technology Stack](#-technology-stack)
* [✨ Features](#-features)
* [📂 Repository Structure](#-repository-structure)
* [⚡ Quick Start](#-quick-start)
* [📖 Full Setup Guide](#-full-setup-guide)
* [🧠 Supported Models](#-supported-models)
* [🖥 Accessing the Interface](#-accessing-the-interface)
* [📚 Documentation](#-documentation)
* [🧪 Examples](#-examples)
* [🛠 Scripts](#-scripts)
* [🌐 Offline Capability](#-offline-capability)
* [🤝 Contributing](#-contributing)
* [📜 License](#-license)

---

# 📌 Project Overview

Large Language Models (LLMs) are typically accessed through cloud APIs.
This repository shows how to **run them completely on your own machine**.

Benefits of local AI:

✅ No API costs
✅ Complete privacy
✅ Offline capability
✅ Full control over models
✅ Experimentation and learning

You will learn how to build a **local AI stack** that runs models such as:

* Mistral
* Phi-3
* DeepSeek Coder
* TinyLlama

---

# 🏗 System Architecture

The local AI system follows this architecture:

```
User
  │
  ▼
Web Browser
  │
  ▼
Open WebUI
  │
  ▼
Ollama Runtime
  │
  ▼
Local LLM Models
```

📍 Web Interface

```
http://localhost:3000
```

📍 Ollama API

```
http://localhost:11434
```

For a detailed architecture explanation see:

➡ [docs/architecture.md](docs/architecture.md)

---

# 📸 Screenshots

### Open WebUI Chat Interface

![Open WebUI Chat](images/screenshots/open-webui-chat.png)

---

### Model Selection

![Model Selector](images/screenshots/model-selector.png)

---

### Installed Models in Ollama

![Ollama Models](images/screenshots/ollama-list.png)

---

### Running Containers

![System Running](images/screenshots/system-running.png)

---

# 🧰 Technology Stack

| Technology | Purpose                   |
| ---------- | ------------------------- |
| Ollama     | Runs LLM models locally   |
| Docker     | Runs Open WebUI container |
| Open WebUI | ChatGPT-style interface   |
| Linux      | Host operating system     |

---

# ✨ Features

This repository teaches how to:

✔ Run LLMs locally
✔ Install and manage models
✔ Connect WebUI with Ollama
✔ Store models on external drives
✔ Automate AI stack startup
✔ Run models completely offline

---

# 📂 Repository Structure

```
run-llms-locally-linux

docs/
 ├ architecture.md
 ├ models.md
 ├ storage-options.md
 └ troubleshooting.md

setup/
 ├ 01-install-ollama.md
 ├ 02-install-docker.md
 ├ 03-install-open-webui.md
 ├ 04-connect-ollama-webui.md
 └ 05-install-models.md

scripts/
 ├ start-ai.sh
 ├ stop-ai.sh
 └ check-system.sh

images/
 └ screenshots/

examples/
```

---

# ⚡ Quick Start

If you want to run the system quickly:

### 1️⃣ Install Ollama

```bash
curl -fsSL https://ollama.com/install.sh | sh
```

### 2️⃣ Install Docker

```bash
sudo apt update
sudo apt install docker.io
```

### 3️⃣ Run Open WebUI

```bash
docker run -d \
-p 3000:8080 \
--name open-webui \
ghcr.io/open-webui/open-webui:main
```

### 4️⃣ Install a Model

```bash
ollama pull mistral
```

### 5️⃣ Start the AI Stack

```bash
./scripts/start-ai.sh
```

Open the interface:

```
http://localhost:3000
```

---

# 📖 Full Setup Guide

For the complete installation process follow the step-by-step guides:

### 1️⃣ Install Ollama

➡ [setup/01-install-ollama.md](setup/01-install-ollama.md)

### 2️⃣ Install Docker

➡ [setup/02-install-docker.md](setup/02-install-docker.md)

### 3️⃣ Install Open WebUI

➡ [setup/03-install-open-webui.md](setup/03-install-open-webui.md)

### 4️⃣ Connect WebUI with Ollama

➡ [setup/04-connect-ollama-webui.md](setup/04-connect-ollama-webui.md)

### 5️⃣ Install Models

➡ [setup/05-install-models.md](setup/05-install-models.md)

---

# 🧠 Supported Models

| Model          | Use Case             |
| -------------- | -------------------- |
| TinyLlama      | Lightweight testing  |
| Mistral        | General conversation |
| Phi-3          | Reasoning tasks      |
| DeepSeek Coder | Programming          |

---

# 🖥 Accessing the Interface

Open WebUI:

```
http://localhost:3000
```

Ollama API:

```
http://localhost:11434
```

---

# 📚 Documentation

Architecture
➡ [docs/architecture.md](docs/architecture.md)

Models Guide
➡ [docs/models.md](docs/models.md)

Storage Options
➡ [docs/storage-options.md](docs/storage-options.md)

Troubleshooting
➡ [docs/troubleshooting.md](docs/troubleshooting.md)

---

# 🧪 Examples

Example prompts and workflows are located in:

```
examples/
```

These examples show how to use models for:

* coding
* explanations
* learning
* experimentation

---

# 🛠 Scripts

Start AI system:

```bash
./scripts/start-ai.sh
```

Stop AI system:

```bash
./scripts/stop-ai.sh
```

Check system health:

```bash
./scripts/check-system.sh
```

---

# 🌐 Offline Capability

Once models are downloaded, the entire system can run **without internet access**.

Internet is only required for:

* downloading models
* installing dependencies

---

# 🤝 Contributing

Contributions are welcome.

Possible improvements:

* new models
* better examples
* troubleshooting fixes
* improved scripts

---

# 📜 License

MIT License

This project is open-source and free to use.
