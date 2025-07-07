# 🚀 Full Stack Application Deployment on AWS EKS using Terraform

> 👨‍💻 **A production-grade deployment architecture** for a full-stack app using AWS EKS and Terraform. Designed with scalability, security, monitoring, and automation at its core — perfect for Implementation Engineers & DevOps enthusiasts.

---

## 📌 Project Goals

✅ **High Availability & Scalability** – Multi-AZ EKS deployment with auto-scaling  
✅ **Infrastructure as Code (IaC)** – Terraform modules for VPC, EKS, RDS, IAM  
✅ **Full Stack Kubernetes Deployment** – React frontend + API backend on EKS  
✅ **Logging & Monitoring** – CloudWatch, HPA   
✅ **Security** – IAM Roles, VPC security, 

---

## 🧱 Tech Stack & Tools

| Layer         | Tech/Service                            |
|---------------|-----------------------------------------|
| 🌐 Frontend   | React.js (Dockerized)                   |
| 🧠 Backend    | Node.js / Flask (Customizable)          |
| ☸️ Orchestration | Amazon EKS (Kubernetes)                 |
| 🗃️ DB          | Amazon RDS (PostgreSQL)                |
| 📦 Container   | Docker + Amazon ECR                    |
| ⚙️ IaC         | Terraform (modular, reusable)          |
| 📈 Monitoring  | CloudWatch,HPA             |
| 🔐 Security    | IAM              |
                         |

---

## 📁 Project Structure


---

## 🎯 Milestone Progress

| Stage | Task                                          | Status      | Completion |
|-------|-----------------------------------------------|-------------|------------|
| ✅ 1   | High-Level Architecture Design                | Completed   | 100%       |
| ✅ 2   | Terraform IaC – VPC, EKS, RDS, IAM            | Completed   | 100%       |
| ✅ 3   | Kubernetes Deployment – Backend & Frontend    | Completed   | 100%       |
| ✅ 4   | Centralized Logging + Monitoring + HPA        | Completed   | 100%       |
| ✅ 5   | CI/CD Pipeline with GitHub Actions + ECR      | Completed   | 100%       |

---

## 🛠️ Prerequisites

Before deploying this project, ensure the following tools are installed:

- 🟢 [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) & configured (`aws configure`)
- 🟣 [Terraform ≥ v1.3](https://developer.hashicorp.com/terraform/downloads)
- ⚫ [kubectl](https://kubernetes.io/docs/tasks/tools/) configured for EKS
- 🐳 [Docker](https://www.docker.com/products/docker-desktop)
- 🔵 GitHub account with access to repositories
- 🔐 IAM user with sufficient permissions to create AWS resources

---

## 🖼️ Architecture Diagram

> Upload your architecture image (e.g., `architecture.png`) inside `/assets/`, then use:

```markdown
### 📌 Architecture Overview

![Architecture Diagram](./assets/architecture.png)



---

## 🧱 Stage 2: Infrastructure as Code (Terraform Templates)

> 📍 Path: `production-grade-real-time-kubernetes-on-aws-eks/`

This stage implements the entire AWS infrastructure using **modular and production-grade Terraform templates**, following IaC best practices to ensure **reusability**, **parameterization**, **security**, and **high availability**.

---

### ✅ What It Provisions

| Stack              | Resources Created                                                                 |
|-------------------|-------------------------------------------------------------------------------------|
| 🧭 Networking      | VPC, Public & Private Subnets, Route Tables, NAT Gateways, IGW, Security Groups    |
| ☸️ EKS Cluster     | EKS Control Plane, Worker Nodes (via ASG), IAM Roles, Kubernetes config             |
| 🗄️ Database        | Amazon RDS (PostgreSQL) with subnet groups, enhanced security                      |
| 📦 Object Storage  | Amazon S3 for storing logs, assets, or backups                                     |
| 🔐 IAM             | Fine-grained IAM policies and roles for EKS, RDS, and EC2                           |

---

### 🔧 Modular Structure

The code is structured in modules for better organization and reuse:



---

### 🚀 How to Use the Terraform Code

Ensure you have the following installed and configured:
- Terraform >= 1.3
- AWS CLI configured (`aws configure`)
- IAM user with admin or provisioning access

#### Step-by-Step

```bash
# Step 1: Navigate to the directory
cd production-grade-real-time-kubernetes-on-aws-eks/

# Step 2: Initialize Terraform
terraform init

# Step 3: Preview the plan
terraform plan

# Step 4: Apply the infrastructure
terraform apply



---

## ☸️ Stage 3: Kubernetes Deployment on EKS

> 📍 Path: [`k8s/`](https://github.com/ramankrishnan/AWS-3-Tier-_with_Terraform/)

This stage deploys a **sample full-stack application** onto the **Amazon EKS cluster** using Kubernetes manifests. The architecture separates frontend and backend services, handles config securely, and supports horizontal scaling.

---

### 📁 Folder Structure – Kubernetes Manifests


---

### 📦 Application Components

| Component     | Description                                                                 |
|---------------|-----------------------------------------------------------------------------|
| 🧠 Backend     | Node.js or Flask-based API, exposed internally via ClusterIP                |
| 🌐 Frontend    | React or HTML/CSS static app, exposed publicly via LoadBalancer service     |
| 🔐 Secrets     | Sensitive data stored in Kubernetes Secrets                                 |
| ⚙️ Config      | App settings injected via ConfigMaps                                         |
| 🏥 Probes      | Liveness and Readiness Probes for pod health checks                         |
| 📈 Autoscaling | HPA enabled based on CPU utilization                                        |

---

### ⚙️ How to Deploy

Make sure `kubectl` is configured for your EKS cluster:

```bash
# Step 1: Set Kubernetes context (if not already done)
aws eks --region <your-region> update-kubeconfig --name <your-cluster-name>

# Step 2: Apply backend service
kubectl apply -f k8s/backend/

# Step 3: Apply frontend service
kubectl apply -f k8s/frontend/

# Step 4: Apply monitoring + HPA
kubectl apply -f k8s/monitoring/

```



