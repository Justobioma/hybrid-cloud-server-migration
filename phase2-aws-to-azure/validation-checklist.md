# ✅ Post-Migration Validation Checklist (Azure)

This checklist ensures that all workloads migrated from AWS to Azure are functioning as expected and meet operational, performance, and security requirements.

---

## 🧮 azure-web-01 (Apache Web Server)

- [ ] VM is running and reachable via SSH
- [ ] Apache service is active (`systemctl status apache2`)
- [ ] Website loads successfully via public IP
- [ ] Configuration files transferred correctly
- [ ] SSL certificates installed (if applicable)
- [ ] Logs are streaming to Azure Monitor
- [ ] NSG allows HTTP/HTTPS traffic

---

## 🗄️ azure-db-01 (MySQL Database)

- [ ] VM is running and reachable via SSH
- [ ] MySQL service is active (`systemctl status mysqld`)
- [ ] Database schema and data verified
- [ ] Application connectivity to DB confirmed
- [ ] Performance benchmarks match or exceed AWS
- [ ] Backups configured (Azure Backup or snapshots)
- [ ] NSG allows MySQL traffic (port 3306)

---

## 🖥️ azure-app-01 (.NET App Server)

- [ ] VM is running and reachable via RDP
- [ ] IIS service is active and serving application
- [ ] .NET application loads without errors
- [ ] Dependencies and environment variables configured
- [ ] Event logs show no critical errors
- [ ] NSG allows RDP and app traffic
- [ ] Monitoring enabled via Azure Monitor Agent

---

## 🔐 Security & Compliance

- [ ] RBAC roles and policies applied correctly
- [ ] VMs use encrypted managed disks
- [ ] No open ports beyond required services
- [ ] OS-level firewalls configured
- [ ] Vulnerability scan completed (Microsoft Defender)

---

## 📊 Performance & Monitoring

- [ ] CPU, memory, and disk usage within expected range
- [ ] Azure Monitor alerts configured for thresholds
- [ ] Logs centralized and accessible
- [ ] Auto-recovery enabled (if applicable)

---

## 🧯 Rollback Readiness

- [ ] Backups verified and restorable
- [ ] DNS can be reverted to AWS IPs
- [ ] Migration logs archived

---

## 🏁 Final Sign-Off

- [ ] All stakeholders have reviewed and approved
- [ ] Documentation updated in GitHub
- [ ] AWS instances decommissioned (or archived)
