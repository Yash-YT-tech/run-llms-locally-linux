
# Install and Manage LLM Models

In this step you will learn how to download and run AI models locally using Ollama.

Ollama allows you to install and run many open-source language models on your computer.

Once installed, these models can run completely offline.

---

# What You Will Learn

After completing this guide you will know how to:

* download LLM models
* list installed models
* run models locally
* remove models
* store models on external drives
* manage disk space

---

# What Are LLM Models?

Large Language Models (LLMs) are AI systems trained on large datasets that can generate text and answer questions.

Examples include:

* Mistral
* Phi-3
* DeepSeek Coder
* TinyLlama

Each model has different capabilities and sizes.

---

# Step 1 Install Your First Model

The easiest way to install a model is with the command:

```
ollama pull model_name
```

Example:

```
ollama pull tinyllama
```

This downloads the TinyLlama model.

Approximate size:

```
600 MB
```

Download time depends on internet speed.

---

# Step 2 Run a Model

Once installed, run a model with:

```
ollama run tinyllama
```

You will enter an interactive chat session in the terminal.

Example prompt:

```
Explain what a neural network is.
```

---

# Step 3 Install Popular Models

Below are some commonly used models.

## TinyLlama

Lightweight testing model.

Install:

```
ollama pull tinyllama
```

Size:

```
~600 MB
```

Recommended for:

* low RAM systems
* testing setup

---

## Mistral

Strong general-purpose model.

Install:

```
ollama pull mistral
```

Size:

```
~4 GB
```

Recommended for:

* conversation
* learning AI prompts
* general reasoning

---

## Phi-3 Mini

Small but powerful reasoning model.

Install:

```
ollama pull phi3
```

Size:

```
~2 GB
```

Recommended for:

* reasoning tasks
* structured responses

---

## DeepSeek Coder

Model optimized for programming.

Install:

```
ollama pull deepseek-coder
```

Size:

```
~700 MB to several GB depending on version
```

Recommended for:

* code generation
* debugging
* explaining code

---

# Step 4 List Installed Models

To see all installed models run:

```
ollama list
```

Example output:

```
NAME               SIZE
tinyllama          637 MB
mistral            4.4 GB
phi3               2.2 GB
deepseek-coder     776 MB
```

---

# Step 5 Remove a Model

If you need to free disk space, remove a model.

Example:

```
ollama rm tinyllama
```

Then verify removal:

```
ollama list
```

---

# Step 6 Model Storage Location

By default, Ollama stores models in:

```
~/.ollama/models
```

These files may consume several gigabytes of storage.

---

# Using External Storage (Optional)

If your internal disk is small, you can store models on an external drive.

Example external location:

```
/media/user/USB/LLMS
```

This prevents filling the system disk.

You may configure Ollama to use this directory using symbolic links or environment variables.

---

# Step 7 Run Models Through Open WebUI

After installing models, open the WebUI interface:

```
http://localhost:3000
```

Select the model from the dropdown menu.

Then send a prompt.

Example:

```
Explain how large language models work.
```

If the model responds, everything is working correctly.

---

# Step 8 Running Models Offline

After a model has been downloaded once, it can run without internet access.

Requirements:

* Ollama server running
* model installed locally

Internet is only required during the first download.

---

# Disk Space Planning

Typical model sizes:

| Model          | Approx Size   |
| -------------- | ------------- |
| TinyLlama      | 600 MB        |
| Phi-3 Mini     | 2 GB          |
| Mistral        | 4 GB          |
| DeepSeek Coder | 700 MB – 6 GB |

Always ensure enough disk space before installing large models.

---

# Next Steps

After installing models you can:

* experiment with prompts
* try different models
* build local AI workflows
* integrate Ollama with other tools

Your local AI environment is now fully operational.
