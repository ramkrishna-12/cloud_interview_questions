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

