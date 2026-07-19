# Cloud Resume Challenge

A production-oriented implementation of the **Cloud Resume Challenge** built with a modern full-stack architecture. The project showcases cloud engineering, backend development, frontend development, DevOps, Infrastructure as Code (IaC), and CI/CD using a fully serverless AWS architecture.

---

# Project Overview

The Cloud Resume Challenge demonstrates the skills required to design, build, deploy, and operate a modern cloud-native application.

This project consists of:

- Responsive React frontend
- Node.js + Express REST API
- Visitor counter API
- AWS serverless infrastructure
- Infrastructure as Code
- CI/CD automation
- Cloud monitoring
- Secure deployment practices

---

# Goals

- Build a professional cloud portfolio
- Learn AWS production architecture
- Demonstrate Infrastructure as Code
- Implement CI/CD pipelines
- Deploy a globally available application
- Follow software engineering best practices

---

# Architecture

```
                User
                 │
                 ▼
          CloudFront CDN
                 │
                 ▼
          S3 Static Website
                 │
                 ▼
         React Frontend (Vite)
                 │
         HTTPS REST API
                 │
                 ▼
          API Gateway
                 │
                 ▼
             AWS Lambda
                 │
                 ▼
            DynamoDB Table
```

---

# Current Development Architecture

```
Frontend (React)
        │
        ▼
Express REST API
        │
        ▼
 Visitor Service
        │
        ▼
 Visitor Store
(In-memory)

Future:

Visitor Store
      │
      ▼
 DynamoDB
```

---

# Features

## Frontend

- React 19
- Vite
- Tailwind CSS
- Dark / Light mode
- Responsive layout
- Professional portfolio
- Dynamic visitor counter
- AWS focused branding

---

## Backend

- Node.js
- Express
- TypeScript
- REST API
- Layered architecture
- Service layer
- Store layer
- Visitor Counter API
- CORS support

---

## Cloud

- AWS Lambda
- API Gateway
- DynamoDB
- S3
- CloudFront
- Route53
- ACM SSL
- CloudWatch

---

## DevOps

- GitHub Actions
- Automated deployments
- Infrastructure as Code
- Environment configuration
- Monitoring
- Logging

---

# Technology Stack

## Frontend

- React
- Vite
- TypeScript
- Tailwind CSS
- Lucide Icons

---

## Backend

- Node.js
- Express
- TypeScript

---

## Cloud

- AWS Lambda
- API Gateway
- DynamoDB
- CloudFront
- S3
- IAM

---

## Infrastructure

- AWS SAM
- AWS CDK
- Terraform (planned)

---

## DevOps

- GitHub Actions
- Git
- GitHub

---

# Folder Structure

```
sixteen-resume/

│
├── apps/
│   │
│   ├── frontend/
│   │   ├── public/
│   │   ├── src/
│   │   ├── package.json
│   │   └── vite.config.ts
│   │
│   └── backend/
│       ├── src/
│       │   ├── controllers/
│       │   ├── routes/
│       │   ├── services/
│       │   ├── store/
│       │   ├── models/
│       │   ├── middleware/
│       │   ├── utils/
│       │   └── server.ts
│       │
│       └── package.json
│
├── docs/
│
├── architecture.md
├── context.md
├── decisions.md
├── roadmap.md
├── runbook.md
├── tasks.md
└── README.md
```

---

# API Endpoints

## Get Visitor Count

```
GET /visitor
```

Response

```json
{
  "count": 25
}
```

---

## Increment Visitor Count

```
POST /visitor
```

Response

```json
{
  "count": 26
}
```

---

# Local Development

## Clone Repository

```bash
git clone https://github.com/<username>/sixteen-resume.git

cd sixteen-resume
```

---

## Install Frontend

```bash
cd apps/frontend

npm install
```

---

## Install Backend

```bash
cd ../backend

npm install
```

---

# Environment Variables

## Frontend

Create:

```
apps/frontend/.env
```

```env
VITE_API_URL=http://localhost:5000
```

---

## Backend

Create:

```
apps/backend/.env
```

```env
PORT=5000
```

---

# Start Backend

```bash
cd apps/backend

npm run dev
```

Server

```
http://localhost:5000
```

---

# Start Frontend

```bash
cd apps/frontend

npm run dev
```

Application

```
http://localhost:5173
```

---

# Testing

## Test Visitor Endpoint

```bash
curl http://localhost:5000/visitor
```

Increment

```bash
curl -X POST http://localhost:5000/visitor
```

---

# Deployment Roadmap

## Phase 1

- React frontend
- Express backend
- Visitor counter
- Local development

Status

- ✅ Complete

---

## Phase 2

- AWS Lambda
- API Gateway
- DynamoDB

Status

- 🚧 In Progress

---

## Phase 3

- S3
- CloudFront
- HTTPS
- Route53

Status

- ⏳ Planned

---

## Phase 4

- GitHub Actions
- Automated deployment
- Infrastructure as Code

Status

- ⏳ Planned

---

## Phase 5

- Monitoring
- Logging
- CloudWatch
- Alarms

Status

- ⏳ Planned

---

# Future Improvements

- Authentication
- Contact form
- Blog
- Project CMS
- Analytics
- CloudWatch dashboards
- AWS X-Ray
- Lambda Powertools
- OpenAPI documentation
- Unit tests
- Integration tests
- End-to-end tests

---

# Learning Objectives

This project demonstrates knowledge of:

- Cloud Computing
- AWS
- Serverless Architecture
- REST APIs
- React
- TypeScript
- Express
- Infrastructure as Code
- CI/CD
- Monitoring
- Secure Development
- Software Architecture
- DevOps

---

# License

This project is licensed under the MIT License.

---

# Author

**Ntlantla Thokozani Nhlapo**

Software Developer | Cloud Engineer | DevOps Engineer

- GitHub
- LinkedIn
- Portfolio

---

# Acknowledgements

This project is based on the **Cloud Resume Challenge**, an industry-recognized hands-on project designed to develop practical cloud engineering and software development skills through the implementation of a real-world serverless application.
