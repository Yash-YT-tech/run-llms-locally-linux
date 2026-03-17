
# Install Docker

Docker is used to run **Open WebUI**, which provides a graphical interface for interacting with local LLM models.

Docker allows applications to run inside **containers**, which are isolated environments that include everything needed to run the application.

In this project, Docker will run:

* Open WebUI (AI interface)

---

# What You Will Achieve

After completing this guide you will be able to:

* install Docker on Linux
* start the Docker service
* verify Docker installation
* run Docker commands without sudo
* run your first container

---

# What is Docker?

Docker is a containerization platform.

Containers allow applications to run in isolated environments.

Advantages:

* consistent environment
* easy deployment
* simple installation of complex software

In this project Docker runs:

Open WebUI → ChatGPT-style interface for local models.

---

# System Requirements

Minimum:

* Linux system
* 4 GB RAM
* internet connection

Recommended:

* 8 GB RAM
* SSD storage

---

# Step 1 Update Package List

Before installing Docker update your system packages.

Run:

```
sudo apt update
```

---

# Step 2 Install Docker

Run the following command:

```
sudo apt install docker.io
```

This installs:

* Docker engine
* container runtime
* Docker CLI tools

Installation usually takes **1–2 minutes**.

---

# Step 3 Verify Docker Installation

Check Docker version:

```
docker --version
```

Example output:

```
Docker version 28.x.x
```

If a version appears, Docker is installed correctly.

---

# Step 4 Start Docker Service

Docker runs as a background service.

Start it with:

```
sudo systemctl start docker
```

---

# Step 5 Enable Docker on Boot

To automatically start Docker when the system boots:

```
sudo systemctl enable docker
```

---

# Step 6 Check Docker Service Status

Verify Docker is running:

```
sudo systemctl status docker
```

Expected result:

```
active (running)
```

Press **Q** to exit the status screen.

---

# Step 7 Run Docker Without sudo (Recommended)

By default Docker requires `sudo`.

You can allow your user to run Docker commands without sudo.

Run:

```
sudo usermod -aG docker $USER
```

Then apply the change:

```
newgrp docker
```

Now test:

```
docker ps
```

If no permission error appears, the configuration is correct.

---

# Step 8 Test Docker with a Container

Run a simple test container:

```
docker run hello-world
```

Expected output:

```
Hello from Docker!
```

This confirms Docker is working properly.

---

# Important Docker Commands

List running containers:

```
docker ps
```

List all containers:

```
docker ps -a
```

Stop a container:

```
docker stop container_name
```

Remove a container:

```
docker rm container_name
```

---

# Common Problems

## Permission Denied Error

Error:

```
permission denied while trying to connect to the Docker daemon
```

Solution:

Run:

```
sudo usermod -aG docker $USER
```

Then restart terminal.

---

## Docker Service Not Running

If Docker commands fail, start the service:

```
sudo systemctl start docker
```

---

# Next Step

Now that Docker is installed, continue to:

```
setup/03-install-open-webui.md
```

In the next step we will install **Open WebUI**, which provides the graphical interface for interacting with local AI models.
