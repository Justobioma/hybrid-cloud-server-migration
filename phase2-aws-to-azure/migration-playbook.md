# 🔄 Migration Playbook: AWS to Azure

## Overview
This playbook outlines the simulated migration of three workloads from AWS EC2 instances to Azure Virtual Machines using a combination of Azure Migrate, Site Recovery, and manual data transfer.

---

## 🧾 AWS Workload Inventory

| AWS Instance Name | OS                  | Role              | Migration Method     |
|-------------------|---------------------|-------------------|----------------------|
| legacy-web-01     | Ubuntu 18.04        | Apache Web Server | Manual (rsync/SCP)   |
| legacy-db-01      | CentOS 7            | MySQL Database     | Azure Migrate (agent-based) |
| legacy-app-01     | Windows Server 2016 | .NET App Server    | Azure Site Recovery  |

---

## 🔁 Migration Steps

### 1. Pre-Migration Checklist
- [x] Validate AWS instance health and backups
- [x] Document application dependencies and ports
- [x] Create Azure Resource Group and VNet via Bicep
- [x] Configure Azure Migrate project
- [x] Open required NSG ports in Azure

---

### 2. Workload-Specific Migration

#### 🧮 `legacy-web-01` (Apache Web Server)
**Method:** Manual file transfer using `rsync` or `scp`

```bash
scp -r ubuntu@<AWS_IP>:/var/www/ azureuser@<Azure_IP>:/var/www/

Install Apache on Azure VM

Transfer config files and restart service

Validate website functionality

🗄️ legacy-db-01 (MySQL Database)
Method: Azure Migrate (agent-based)

Install Azure Migrate agent on AWS EC2

Configure replication settings in Azure Migrate

Launch test VM in Azure

Validate schema, data, and performance

Cutover to Azure VM

🖥️ legacy-app-01 (.NET App Server)
Method: Azure Site Recovery

Enable replication from AWS to Azure

Configure recovery plan and test failover

Validate application on Azure VM

Perform planned failover and finalize cutover

```
### 3. Post-Migration Tasks
Update DNS records to point to Azure IPs

Configure Azure Monitor and Defender

Apply security patches and OS hardening

Decommission AWS instances (optional)


✅ Success Criteria
All services reachable via Azure public IP

No data loss or corruption

Performance benchmarks match or exceed AWS

Security and compliance standards met