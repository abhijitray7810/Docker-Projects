# Docker Projects
  
A collection of Docker-based projects demonstrating various containerization concepts, from simple Python scripts to multi-container applications with CI/CD workflows.  

## 📋 Table of Contents

- [Overview](#overview)
- [Projects](#projects)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)

## 🎯 Overview

This repository contains hands-on Docker projects that cover essential containerization concepts including: 

- Containerizing applications
- Multi-container orchestration 
- CI/CD with GitHub Actions
- Performance monitoring
- Multi-stage builds

## 🚀 Projects

### 1. Setting up a Simple Web Server
Basic Docker setup for a web server application. Perfect for understanding fundamental Docker concepts like images, containers, and port mapping.

**Key Learning Points:**
- Creating Dockerfiles
- Exposing ports
- Running containers

### 2. Dockerizing a Python Script
Learn how to containerize Python applications with all their dependencies.

**Key Learning Points:**
- Python environment in Docker
- Managing dependencies
- Volume mounting for scripts

### 3. Building a Simple Multi-Container Application
Demonstrates Docker Compose for orchestrating multiple containers working together.

**Key Learning Points:**
- Docker Compose basics
- Container networking
- Service dependencies
- Environment variables

### 4. Server Performance Stats Docker
A containerized application for monitoring and displaying server performance metrics.

**Key Learning Points:**
- System monitoring in containers
- Data visualization
- Resource management

### 5. Multi-Stage Application
Advanced Docker concepts using multi-stage builds to optimize image size and security.

**Key Learning Points:**
- Multi-stage Dockerfiles
- Build optimization
- Production-ready images
- Layer caching strategies

### 6. GitHub Deployment Workflow
Automated deployment pipeline using GitHub Actions.

**Key Learning Points:**
- CI/CD with Docker
- Automated testing and deployment
- Container registry integration
- Workflow automation

## 📦 Prerequisites

Before running these projects, ensure you have the following installed:

- [Docker](https://docs.docker.com/get-docker/) (version 20.10 or higher)
- [Docker Compose](https://docs.docker.com/compose/install/) (version 2.0 or higher)
- Git
- A text editor or IDE

## 🏁 Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/abhijitray7810/Docker-Projects.git
   cd Docker-Projects
   ```

2. **Navigate to a specific project:**
   ```bash
   cd <project-directory>
   ```

3. **Follow the project-specific instructions:**
   Each project directory contains its own documentation with specific setup and run instructions.

4. **General Docker commands:**
   ```bash
   # Build an image
   docker build -t <image-name> .
   
   # Run a container
   docker run -p <host-port>:<container-port> <image-name>
   
   # Use Docker Compose
   docker-compose up -d
   
   # Stop containers
   docker-compose down
   ```

## 📁 Project Structure

```
Docker-Projects/
├── .github/
│   └── workflows/
│       └── deploy.yml              # GitHub Actions workflow
├── .vscode/                        # VSCode configuration
├── Building a simple multi-container application/
├── Dockerizing a Python script/
├── Server-performance-stats-docker/
├── Setting up a simple web server/
├── __gh-deployment-workflow__/
├── multi-stage-application/
└── README.md
```

## 🛠️ Common Commands

### Docker Basics
```bash
# List all containers
docker ps -a

# List all images
docker images

# Remove a container
docker rm <container-id>

# Remove an image
docker rmi <image-id>

# View container logs
docker logs <container-id>

# Execute command in running container
docker exec -it <container-id> bash
```

### Docker Compose
```bash
# Start services
docker-compose up

# Start services in detached mode
docker-compose up -d

# Stop services
docker-compose down

# View logs
docker-compose logs -f

# Rebuild services
docker-compose build
```

## 🤝 Contributing

Contributions are welcome! If you'd like to add new projects or improve existing ones:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-project`)
3. Commit your changes (`git commit -m 'Add new Docker project'`)
4. Push to the branch (`git push origin feature/new-project`)
5. Open a Pull Request

## 📝 Best Practices

- Always use `.dockerignore` to exclude unnecessary files
- Keep images small by using appropriate base images
- Use multi-stage builds for production applications
- Never store secrets in Dockerfiles
- Tag your images appropriately
- Document environment variables and configuration options

## 🐛 Troubleshooting

### Common Issues

**Port already in use:**
```bash
# Find and stop the process using the port
lsof -i :<port-number>
kill -9 <PID>
```

**Permission denied:**
```bash
# Add your user to the docker group
sudo usermod -aG docker $USER
# Then log out and log back in
```

**Container fails to start:**
```bash
# Check logs for errors
docker logs <container-name>
```

## 📚 Resources 

- [Docker Documentation](https://docs.docker.com/)
- [Docker Compose Documentation](https://docs.docker.com/compose/)
- [Docker Hub](https://hub.docker.com/)
- [Best Practices for Writing Dockerfiles](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)

## 👤 Author

**Abhijit Ray**
- GitHub: [@abhijitray7810](https://github.com/abhijitray7810)

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

⭐ If you find these projects helpful, please consider giving the repository a star!

**Happy Dockerizing! 🐳**
