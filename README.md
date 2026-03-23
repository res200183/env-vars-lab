# Multi-Environment CI/CD Pipeline (AWS)

## 📌 Overview
This project demonstrates a CI/CD pipeline built with AWS services that supports dynamic environments (dev, stage, prod) using a single pipeline.

## 🚀 Architecture
- AWS CodePipeline
- AWS CodeBuild
- GitHub (source)
- AWS Systems Manager Parameter Store

## ⚙️ Key Features
- Dynamic environment switching using APP_ENV variable
- Secure configuration via Parameter Store
- Single buildspec.yml for multiple environments
- Secrets are not stored in the repository

## 📂 Project Structure
- buildspec.yml — pipeline configuration
- app.sh — test script to print environment variables

## 🔐 Environment Variables
Stored in AWS SSM Parameter Store:
- /app/dev/*
- /app/stage/*
- /app/prod/*

## ▶️ How it works
1. Code is pushed to GitHub
2. CodePipeline triggers build
3. CodeBuild reads APP_ENV
4. Parameters are fetched dynamically
5. Script runs with environment-specific values

## 🧪 Example Output
```
Environment: dev
DB_HOST: ***
API_URL: ***
LOG_LEVEL: ***
```

## 🛠 Technologies
- AWS CodePipeline
- AWS CodeBuild
- AWS SSM Parameter Store
- GitHub

## 📈 Status
Working pipeline with dev and stage environments
