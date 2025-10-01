# ✅ Post-Migration Validation Checklist

This checklist ensures that all migrated servers from the on-premise environment to AWS are functioning as expected and meet operational requirements.

---

## 🧮 legacy-web-01 (Apache Web Server)

- [ ] EC2 instance is running and reachable via SSH
- [ ] Apache service is active (`systemctl status apache2`)
- [ ] Website loads successfully via public IP
- [ ] Configuration files transferred correctly
- [ ] SSL certificates installed (if applicable)
- [ ] Logs are streaming to CloudWatch
- [ ] Security group allows HTTP/HTTPS traffic

---

## 🗄️ legacy-db-01 (MySQL Database)

- [ ] EC2 instance is running and reachable via SSH
- [ ] MySQL service is active (`systemctl status mysqld`)
- [ ] Database schema and data verified
- [ ] Application connectivity to DB confirmed
- [ ] Performance benchmarks match or exceed on-prem
- [ ] Backups configured (e.g., AWS Backup or snapshots)
- [ ] Security group allows MySQL traffic (port 3306)

---

## 🖥️ legacy-app-01 (.NET App Server)

- [ ] EC2 instance is running and reachable via RDP
- [ ] IIS service is active and serving application
- [ ] .NET application loads without errors
- [ ] Dependencies and environment variables configured
- [ ] Event logs show no critical errors
- [ ] Security group allows RDP and app traffic
- [ ] Monitoring enabled via CloudWatch Agent

---

## 🔐 Security & Compliance

- [ ] IAM roles and policies applied correctly
- [ ] EC2 instances use encrypted EBS volumes
- [ ] No open ports beyond required services
- [ ] OS-level firewalls configured
- [ ] Vulnerability scan completed

---

## 📊 Performance & Monitoring

- [ ] CPU, memory, and disk usage within expected range
- [ ] CloudWatch alarms configured for thresholds
- [ ] Logs centralized and accessible
- [ ] Auto-recovery enabled (if applicable)

---

## 🧯 Rollback Readiness

- [ ] Backups verified and restorable
- [ ] DNS can be reverted to on-prem IPs
- [ ] Migration logs archived

---

## 🏁 Final Sign-Off

- [ ] All stakeholders have reviewed and approved
- [ ] Documentation updated in GitHub
- [ ] On-premise servers decommissioned (or archived)