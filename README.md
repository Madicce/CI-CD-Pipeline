# CI-CD-Pipeline

A simple CI/CD pipeline for a Python project demonstrating DevSecOps practices.

## Table of Contents

- [Features](#features)
- [Goals](#goals)
- [Installation](#installation)
- [Usage](#usage)
- [Pipeline](#pipeline)
- [Technologies used](#technologies-used)

---

## Features

- Continuous Integration to run tests and ensure code quality
- Static Application Security Testing (SAST) using Semgrep
- Dependency audit with pip-audit
- Code formatting with Black
- Deployment with Podman (containerization)

---

## Goals

The main goal of this project is to learn **DevSecOps practices** by implementing a **secure CI/CD pipeline** for a Python project.  
It demonstrates how to:
- Automate tests and linting
- Audit dependencies for vulnerabilities
- Build and deploy a containerized application

---

## Installation

1. **Clone the repository**

```bash
git clone https://github.com/<your-username>/ci-cd-pipeline.git
cd ci-cd-pipeline
```
2. **Install Python dependencies**

```bash
python -m pip install --upgrade pip
pip install -r requirements.txt
```

3. **Install Podman (for deployment)**

- On Ubuntu:

```bash
sudo apt-get update
sudo apt-get install -y podman
```

---
## Usage

### Run the application locally

```bash
python main.py
```

Expected output:

```bash
Hello world!
```

### Run tests

```bash
pytest
```

### Code formatting

```bash
black src/
```

## Pipeline

### Continuous Integration (CI)

- Runs on every push and pull request on main
- Steps:
  - Checkout code
  - Install Python dependencies
  - Run tests with pytest
  - Lint code with Black
  - Audit dependencies with pip-audit
  - Run security checks with Semgrep
  - Package the project as a ZIP artifact

### Continuous Deployment (CD)

- Triggered on push to main
- Steps:
  - Checkout code
  - Build a Podman container
  - Run the container
  - Verify output (Hello world!)

## Technologies used

- **Python 3.11** – Programming language
- **Podman** – Containerization
- **GitHub Actions** – CI/CD automation
- **Black** – Code formatting
- **pip-audit** – Dependency security auditing
- **Semgrep** – Static code analysis (SAST)

