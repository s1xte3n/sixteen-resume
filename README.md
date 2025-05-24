# 🌩️ Cloud Resume Challenge – Ntlantla Thokozani Nhlapo

![Build Backend](https://github.com/s1xte3n/sixteen-resume/actions/workflows/deploy-backend.yml/badge.svg)
![Deploy Frontend](https://github.com/s1xte3n/sixteen-resume/actions/workflows/deploy-frontend.yml/badge.svg)

---

## 📘 Project Overview

This project is my submission for the [Cloud Resume Challenge](https://cloudresumechallenge.dev/), designed to showcase full-stack cloud development using **100% free-tier AWS services**.

It features:
- A professional static resume frontend
- A live visitor counter API built with Lambda + DynamoDB
- Full CI/CD using GitHub Actions
- Deployment to S3 with CloudFront CDN

---

## 🌐 Live Demo

🟢 **View Resume Site**:  
[sixteen-resume.co.za](https://d10v4jz4l0kwai.cloudfront.net)

---

## 🛠️ Tech Stack

| Layer        | Service                            |
|--------------|-------------------------------------|
| Frontend     | HTML, CSS, JS, S3, CloudFront       |
| Backend      | AWS Lambda, API Gateway, DynamoDB   |
| Infra as Code| AWS CDK (Python)                    |
| CI/CD        | GitHub Actions                      |
| Testing      | `pytest` for Lambda unit testing    |

---

## 🧱 Architecture

```plaintext
[ Visitor Browser ]
        ↓
  [ CloudFront CDN ]
        ↓
     [ S3 Static Site ]
        ↓
    <script> → [API Gateway] → [Lambda] → [DynamoDB]
```

---

## 🧗 Challenges & How I Solved Them

### 🔁 1. Lambda deployment errors (SAM → CDK)
**Challenge:**  
Originally implemented the backend with AWS SAM. Deployment errors like `NoSuchBucket` and `CodeUri not found` were frequent due to intermediate `.aws-sam` build folder issues.

**Solution:**  
I migrated the entire backend to AWS CDK (Python), enabling reusable, testable constructs and better environment control. CDK allowed me to define IAM roles, API Gateway routes, and DynamoDB resources all in code — reducing manual error.

---

### 🔐 2. CloudFront Invalidation Access Denied
**Challenge:**  
GitHub Actions failed with `AccessDenied` when trying to invalidate the CloudFront cache after S3 deploys.

**Solution:**  
I updated the IAM policy for the GitHub Actions IAM user (`cdk-github-actions-user`) to explicitly allow `cloudfront:CreateInvalidation` on my distribution. This unblocked the cache clearing and ensured live deploys were always fresh.

---

### 📦 3. Environment Variables in Lambda Tests
**Challenge:**  
Unit tests for the Lambda function failed due to missing environment variable `TABLE_NAME`, raising `KeyError`.

**Solution:**  
I refactored the Lambda code to resolve environment variables **inside** the handler (not at the module level), allowing me to set them dynamically during tests using `os.environ`.

---

### 🧪 4. Reliable CI/CD for Multi-Part Project
**Challenge:**  
Coordinating backend and frontend CI/CD workflows with correct AWS credentials, region targeting, and artifact paths across two folders (`infrastructure/`, `frontend/`) was error-prone.

**Solution:**  
I split deployment pipelines:
- `deploy-backend.yml` for CDK deploy + `pytest`
- `deploy-frontend.yml` for S3 sync + CloudFront invalidation  
Using GitHub Secrets ensured secure and environment-specific deploys.

---

### 🧰 5. S3 Bucket Not Found Errors
**Challenge:**  
During `aws s3 sync`, I received `NoSuchBucket` errors due to incorrect or non-existent bucket names.

**Solution:**  
I verified and manually created the bucket, then outputted the bucket name from CDK using `CfnOutput`. I also updated GitHub Secrets to ensure workflows referenced the correct values.

---

## 🚀 Deployment Instructions

⚙️ Prerequisites
AWS CLI configured

Python 3.12+

AWS CDK bootstrapped: cdk bootstrap

Required GitHub secrets set:

AWS_ACCESS_KEY_ID

AWS_SECRET_ACCESS_KEY

S3_BUCKET_NAME

CLOUDFRONT_DISTRIBUTION_ID

🧱 1. Deploy Backend (Lambda + API + DynamoDB)
bash
Copy
Edit
cd infrastructure
pip install -r requirements.txt
pytest lambda/test_app.py
cdk deploy

🌐 2. Deploy Frontend (Static Site)
bash
Copy
Edit
aws s3 sync frontend/ s3://your-s3-bucket-name --delete

aws cloudfront create-invalidation \
  --distribution-id YOUR_DIST_ID \
  --paths "/*"
🔄 CI/CD Workflows
✅ deploy-backend.yml – runs unit tests + deploys CDK stack

✅ deploy-frontend.yml – syncs frontend to S3 + invalidates CDN

---

## 📄 License

MIT — free to use and modify.

---

## 🙌 Author

Ntlantla Thokozani Nhlapo

🔗 [LinkedIn](www.linkedin.com/in/ntnhlapo16)

📧 [Email](mailto:ntnhlapo16@gmail.com)

---

## ✨ Credits

Cloud Resume Challenge by Forrest Brazeal

AWS CDK for clean infrastructure code

GitHub Actions for seamless CI/CD
