# 🚀 Hybrid Server Migration Project
![Terraform](https://img.shields.io/badge/IaC-Terraform-blueviolet)
![Azure](https://img.shields.io/badge/Cloud-Azure-blue)
![AWS](https://img.shields.io/badge/Cloud-AWS-orange)
![Migration](https://img.shields.io/badge/Project-Migration-green)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow)

This repository simulates a full-scale server migration project involving:

1. **Phase 1:** Migration of legacy servers from an on-premise environment to AWS.
2. **Phase 2:** Migration of workloads from AWS to Azure.

The project includes infrastructure-as-code (Terraform), migration playbooks, validation checklists, and architecture diagrams — all documented for clarity and reproducibility.

---

## 📦 Repository Structure

```plaintext
server-migration-project/
├── README.md
├── phase1-onprem-to-aws/
│   ├── terraform/                  # AWS infrastructure setup
│   ├── migration-playbook.md      # Step-by-step migration guide
│   ├── validation-checklist.md    # Post-migration validation
│   ├── architecture-diagram.png   # AWS infrastructure diagram
├── phase2-aws-to-azure/
│   ├── bicep/                      # Azure infrastructure setup
│   ├── migration-playbook.md      # AWS to Azure migration guide
│   ├── validation-checklist.md    # Azure validation checklist
│   ├── architecture-diagram.png   # Azure infrastructure diagram
├── scripts/                        # Automation scripts
│   ├── data-transfer.sh
│   ├── cleanup.sh
└── rollback-strategy.md           # Rollback procedures
```
## 🧭 Project Goals
Simulate real-world server migration scenarios

Use Terraform and Bicep for cloud provisioning

Document every step for transparency and learning

Validate infrastructure and application health post-migration

``
## 🛠️ Technologies Used
Terraform (AWS provisioning)

Bicep (Azure provisioning)

AWS MGN & SMS (Migration tools)

Azure Migrate & Site Recovery

Linux/Windows CLI (rsync, PowerShell)

CloudWatch & Azure Monitor (Monitoring)
``
## 📌 How to Use
- Clone the repo:
``` bash 
git clone https://github.com/your-username/server-migration-project.git
```
- Navigate to Phase 1:
cd phase1-onprem-to-aws/terraform
terraform init
terraform apply

- Follow the migration playbook and validation checklist.
- Repeat for Phase 2 under phase2-aws-to-azure.
``
## 🧯 Rollback Strategy
In case of migration failure, refer to rollback-strategy.md for recovery procedures and DNS reversion steps.

---

## 🌐 Phase 2: AWS to Azure Migration

This phase simulates the migration of workloads from AWS EC2 to Azure Virtual Machines using Azure-native tools and Bicep for infrastructure provisioning.

### 🔧 Tools Used
- Azure Migrate (agent-based)
- Azure Site Recovery
- SCP/rsync for manual transfers
- Bicep for IaC
- Azure Monitor & Defender

### 📁 Folder Structure

```plaintext
phase2-aws-to-azure/
├── bicep/                      # Azure infrastructure setup
├── migration-playbook.md      # AWS to Azure migration guide
├── validation-checklist.md    # Azure validation checklist
├── architecture-diagram.png   # Azure infrastructure diagram
```
## 📌 How to Use
Navigate to Phase 2:
```bash 
cd phase2-aws-to-azure/bicep
az deployment sub create --location eastus --template-file main.bicep
```
- Follow the migration playbook and validation checklist.
- Confirm success and update DNS records.
``
## 👤 Author
Obioma  
Location: Lagos, Nigeria
Project Lead & Cloud Migration Architect

``
## 📄 License
This project is licensed under the MIT License. See the LICENSE file for details.
