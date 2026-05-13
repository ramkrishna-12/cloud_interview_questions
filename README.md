# Cloud Engineering Static Website Deployment

## Project Overview

This project demonstrates containerized static website deployment using:

- Docker
- Nginx
- GitHub Actions CI/CD

The application hosts static HTML pages inside an Nginx container and automatically validates Docker builds using GitHub Actions.

The project simulates a lightweight production-style static web deployment workflow commonly used in cloud and DevOps environments.

---

# Tech Stack

- Docker
- Nginx
- GitHub Actions
- HTML5
- CI/CD Automation

---

# Project Structure

```bash
project/
│
├── .github/
│   └── workflows/
│       └── docker-build.yml
│
├── cloud_eng.html
├── cloud_system-engineering.html
├── Dockerfile
├── .dockerignore
└── README.md
```

---

# Features

- Containerized static website hosting
- Lightweight Nginx web server
- Automated Docker image build
- CI/CD pipeline with GitHub Actions
- Automated container validation
- HTTP accessibility testing

---

# Docker Configuration

The application uses an Nginx Alpine image for lightweight deployment.

Docker workflow:
1. Build Docker image
2. Copy static HTML files
3. Start Nginx container
4. Expose port 80
5. Validate site accessibility

---

# Dockerfile

```dockerfile
FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY cloud_eng.html /usr/share/nginx/html/index.html
COPY cloud_system-engineering.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
```

---

# GitHub Actions Workflow

The CI/CD pipeline automatically:

- checks out repository code
- builds Docker image
- starts container
- validates container health
- tests website accessibility using curl

Workflow file:

```bash
.github/workflows/docker-build.yml
```

---

# Build Docker Image

```bash
docker build -t cloud-static-site .
```

---

# Run Docker Container

```bash
docker run -d -p 8080:80 cloud-static-site
```

---

# Access Website

Main page:

```text
http://localhost:8080
```

Secondary page:

```text
http://localhost:8080/cloud_system-engineering.html
```

---

# CI/CD Workflow

The GitHub Actions pipeline validates:

- Docker build success
- container startup
- Nginx execution
- website availability

This ensures deployment reliability before production usage.

---

# Learning Objectives

This project demonstrates:

- Docker containerization
- Static web hosting with Nginx
- GitHub Actions automation
- CI/CD pipeline debugging
- Container lifecycle management
- Service health validation
- Basic cloud deployment workflows

---

# Common Challenges Solved

During implementation, several real-world DevOps issues were handled:

- incorrect workflow branch configuration
- Docker image naming issues
- container startup timing problems
- malformed Dockerfile configuration
- CI/CD trigger debugging
- Nginx service validation

These reflect realistic cloud engineering troubleshooting scenarios.

---

