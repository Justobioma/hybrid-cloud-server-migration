# 🛠️ Migration Playbook: On-Premise to AWS

## Overview
This playbook outlines the simulated migration of three legacy servers from an on-premise environment to AWS using a combination of manual and automated tools.

---

## 🧾 Legacy Server Inventory

| Server Name     | OS                  | Role              | Migration Method |
|-----------------|---------------------|-------------------|------------------|
| legacy-web-01   | Ubuntu 18.04        | Apache Web Server | Manual (rsync)   |
| legacy-db-01    | CentOS 7            | MySQL Database     | AWS MGN          |
| legacy-app-01   | Windows Server 2016 | .NET App Server    | AWS SMS          |

---

## 🔁 Migration Steps

### 1. Pre-Migration Checklist
- [x] Validate server health and backups
- [x] Document application dependencies
- [x] Open required firewall ports
- [x] Create AWS IAM roles and policies
- [x] Provision AWS infrastructure via Terraform

---

### 2. Server-Specific Migration

#### 🧮 `legacy-web-01` (Apache Web Server)
**Method:** Manual file transfer using `rsync`

```bash
rsync -avz /var/www/ ubuntu@<AWS_EC2_IP>:/var/www/
- Install Apache on EC2
- Copy config files: /etc/apache2/sites-available/
- Restart Apache: sudo systemctl restart apache2


