
# Troubleshooting Guide

This section lists common problems encountered when running LLMs locally.

---

# Ollama Server Not Running

Error:

connection refused

Solution:

Start Ollama server.

Run:

ollama serve

---

# Docker Permission Error

Error:

permission denied while connecting to docker daemon

Solution:

Run:

sudo usermod -aG docker $USER

Then restart the terminal.

---

# Model Download Repeating

Sometimes Ollama downloads a model again.

This happens if the model directory cannot be found.

Verify models using:

ollama list

---

# Open WebUI Cannot Connect To Ollama

Verify Ollama server is running.

Check:

http://localhost:11434

If it does not open, start Ollama.

---

# External Storage Permission Issues

If using USB storage, ensure proper permissions.

You may need to run:

sudo chmod -R 777 /media/yourdrive
