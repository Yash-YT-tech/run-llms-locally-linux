
# Connect Open WebUI to Ollama

In this step we connect **Open WebUI** to the **Ollama runtime**.

Open WebUI itself does not run AI models.
Instead, it sends requests to Ollama through the Ollama API.

If this connection is not configured correctly, Open WebUI will not show any models.

---

# How The Connection Works

Open WebUI communicates with Ollama through a local API.

The communication flow:

User Browser
↓
Open WebUI
↓
Ollama API
↓
LLM Model

---

# Ollama API Address

Ollama runs a local API server.

Default address:

```
http://localhost:11434
```

This API allows applications like Open WebUI to send prompts to models.

---

# Step 1 Ensure Ollama Server Is Running

Before connecting WebUI, verify Ollama is active.

Run:

```
ollama serve
```

If the server is already running you may see an error:

```
address already in use
```

This simply means Ollama is already running.

---

# Step 2 Verify Ollama API

Test the API using curl:

```
curl http://localhost:11434
```

If Ollama is running you should receive a response.

You can also check available models:

```
curl http://localhost:11434/api/tags
```

Example output:

```
{
 "models": [
   {
     "name": "tinyllama",
     "size": "637MB"
   }
 ]
}
```

---

# Step 3 Open Open WebUI

Open your browser and go to:

```
http://localhost:3000
```

Log into your admin account.

---

# Step 4 Configure Ollama Connection

Inside Open WebUI:

1. Open **Settings**
2. Go to **Connections**
3. Select **Ollama**

Enter the API URL:

```
http://localhost:11434
```

Save the configuration.

---

# Step 5 Verify Models Are Detected

After connecting the API, Open WebUI will automatically detect installed models.

To verify:

1. Open the chat page
2. Click the model selector
3. Installed models should appear in the dropdown list

Example models:

* tinyllama
* mistral
* phi3
* deepseek-coder

---

# If Models Do Not Appear

Check installed models:

```
ollama list
```

If the list is empty, install a model.

Example:

```
ollama pull tinyllama
```

Then refresh the Open WebUI page.

---

# Common Problems

## Open WebUI Cannot Connect to Ollama

Error:

```
Connection failed
```

Possible causes:

• Ollama server not running
• incorrect API URL
• firewall blocking port

Solution:

Start Ollama server:

```
ollama serve
```

Verify API:

```
http://localhost:11434
```

---

## Models Not Showing in WebUI

Check installed models:

```
ollama list
```

If no models appear, install one:

```
ollama pull mistral
```

Then refresh Open WebUI.

---

# Testing the Connection

Once models appear in the dropdown:

1. Select a model
2. Send a prompt

Example prompt:

```
Explain what a Large Language Model is.
```

If a response appears, the system is correctly configured.

---

# Next Step

Now that Open WebUI and Ollama are connected, we can install and manage AI models.

Continue with:

```
setup/05-install-models.md
```

In the next step you will learn:

• how to install models
• how to manage model storage
• how to run different models locally
