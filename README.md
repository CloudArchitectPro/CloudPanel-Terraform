# ☁️ CloudPanel on Oracle Cloud (OCI) — Terraform Infrastructure

Deploy a production-grade CloudPanel server on Oracle Cloud using **Terraform**, with security-first architecture, automation, and backup readiness.

---

## 🚀 Overview

This Terraform project sets up a secure and scalable OCI infrastructure to host **CloudPanel**, ideal for managing static sites, WordPress, and PHP apps. Designed for zero-downtime backups and seamless redeploys.

---

## 📚 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [Project Structure](#-project-structure)
- [Requirements](#-requirements)
- [Usage Instructions](#-usage-instructions)
- [Access CloudPanel](#-access-cloudpanel)
- [Recommended .gitignore](#-recommended-gitignore)
- [Optional Enhancements](#-optional-enhancements)
- [License](#-license)
- [Author](#-author)
- [CloudPanel Architecture](#-cloudpanel-architecture)

---

## 🔐 Features

✅ Secure Public/Private Subnet Architecture  
🔐 SSH locked to your IP (and port 8443)  
🛡️ CloudPanel deployed on hardened Ubuntu instance  
📦 Automatic Internet Gateway & NAT setup  
🌐 Optional Traefik Reverse Proxy support  
🧑‍💻 Fully managed via Terraform Cloud  

---

## 📁 Project Structure

<pre>
.
├── main.tf              # Core infrastructure config
├── variables.tf         # All input variables
├── terraform.tf         # Terraform Cloud backend config
├── .gitignore           # Prevents committing secrets/state
└── README.md            # Project overview
</pre>

---

## 📦 Requirements

✅ Terraform ≥ 1.5+  
✅ Oracle Cloud Free Tier Account  
✅ SSH Key Pair (RSA)  
✅ Terraform Cloud Workspace (for remote backend)

---

## 🛠 Usage Instructions

### 1️⃣ Clone the Repo

```bash
git clone https://github.com/CloudArchitectPro/CloudPanel-Terraform.git
cd CloudPanel-Terraform

2️⃣ Configure Terraform Cloud Variables
In your Terraform Cloud workspace, add these as Environment Variables (prefix TF_VAR_ is required):

Variable Name	Description
TF_VAR_compartment_ocid	Your OCI compartment OCID
TF_VAR_tenancy_ocid	Your tenancy OCID
TF_VAR_user_ocid	Your OCI user OCID
TF_VAR_private_key	Your API private key PEM (RSA)
TF_VAR_fingerprint	Fingerprint for the API key
TF_VAR_ssh_public_key	SSH public key for access
TF_VAR_allowed_cidr	Your local IP address with /32

These will automatically map to Terraform input variables.

3️⃣ Deploy the Infrastructure

terraform init
terraform plan
terraform apply

This will create:

✅ VCN with DNS enabled
✅ Internet Gateway & NAT Gateway
✅ Public & Private Subnets
✅ Route Tables and Security Lists
✅ Ubuntu instance with CloudPanel via SSH
✅ Port 8443 and SSH access restricted to your IP

🌐 Access CloudPanel
After deployment, visit:

https://<your_public_ip>:8443

🧹 Recommended .gitignore
.terraform/
*.tfstate
*.tfstate.backup
*.tfvars
*.pem
*.key
*.log
This prevents secrets and Terraform state from being committed.

📄 License
MIT License — free to use, modify, and share.

👨‍💻 Author
Naveen Madhavan
🌐 naveen.cloud
CloudPanel Architect & AWS Certified Security Specialist

🗺️ CloudPanel Architecture


Built with ❤️ by Clouma | Cloud Infrastructure & Security Solutions


---

✅ **Now Commit Your README:**

1. If editing on GitHub, use:
   - **Commit message:** `Polished README with full instructions and architecture`
   - Description (optional): `Includes setup guide, security notes, architecture, and author`

2. If using terminal:
```bash
git add README.md
git commit -m "Polished README with full instructions and architecture"
git push origin main

Let me know if you’d like a Terraform badge, CloudPanel UI screenshot, or additional automation tips.

MIT License

Copyright (c) 2025 Naveen Madhavan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

