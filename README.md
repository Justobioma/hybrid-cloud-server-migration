# 🚀 Hybrid Server Migration Project

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
Clone the repo:
git clone https://github.com/your-username/server-migration-project.git

Navigate to Phase 1:
cd phase1-onprem-to-aws/terraform
terraform init
terraform apply
