# System Architecture

This project explains how to run **Large Language Models (LLMs)** locally on a Linux machine using **Ollama** and **Open WebUI**.

The goal is to allow users to run AI models **fully offline on their own computer** without using cloud services.

---

# What We Are Building

We are creating a **local AI stack** consisting of:

• Ollama → model runtime  
• Open WebUI → user interface  
• Docker → container runtime  
• Local model storage → where models are stored

This stack allows you to run models like:

- Mistral
- Phi3
- DeepSeek Coder
- TinyLlama

---

# High Level Architecture

User Browser
↓
Open WebUI
↓
Ollama Server
↓
Local LLM Models

---

# Detailed Architecture

The system works in layers.


User
↓
Web Browser
↓
Open WebUI (Docker Container)
↓
Ollama API (localhost:11434)
↓
LLM Runtime
↓
Model Files on Disk


---

# Components Explained

## 1 Browser

The browser is the interface used by the user.

Example:

http://localhost:3000

The browser connects to **Open WebUI**.

---

## 2 Open WebUI

Open WebUI provides a **ChatGPT-like interface**.

It allows users to:

• select models  
• chat with models  
• manage conversations  

Open WebUI runs inside a **Docker container**.

---

## 3 Ollama

Ollama is the **LLM runtime engine**.

Responsibilities:

• downloading models  
• loading models into memory  
• running inference  
• exposing API for applications

Ollama exposes a local API:


http://localhost:11434


Applications like Open WebUI communicate with this API.

---

## 4 LLM Models

The actual AI models are stored locally.

Examples:

• mistral  
• phi3  
• deepseek-coder  
• tinyllama  

These models are stored on disk.

Default location:


~/.ollama/models


---

# Storage Options

Models can be stored in two ways.

### Internal Storage

Default location:


~/.ollama/models


Advantages:

• simple setup  
• automatic

Disadvantages:

• fills system disk quickly

---

### External Storage

Models can also be stored on:

• USB drive  
• external SSD  
• HDD

Example path:


/media/user/USB/LLMS


External storage is recommended when using many models.

---

# Offline Capability

Once models are downloaded, **internet is no longer required**.

The entire system runs locally.

This allows:

• privacy  
• offline usage  
• full control over AI models

---

# Why This Architecture Matters

Running LLMs locally provides:

• privacy  
• no API costs  
• full control over models  
• offline capability

This setup allows developers and learners to experiment with AI models without relying on cloud providers.
