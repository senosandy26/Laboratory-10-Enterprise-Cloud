## 7. Persistent Storage

**List Docker volumes:**

```bash
docker volume ls
```

**Inspect MySQL volume:**

```bash
docker volume inspect lowdb_db_data
```

**Inspect WordPress volume:**

```bash
docker volume inspect lowdb_wordpress_data
```

---

## 8. Firewall Security

**Reset UFW:**

```bash
sudo ufw --force reset
```

**Set default deny outgoing:**

```bash
sudo ufw default deny outgoing
```

**Allow outgoing traffic:**

```bash
sudo ufw default allow outgoing
```

**Allow SSH:**

```bash
sudo ufw allow 22/tcp
```

**Allow web application:**

```bash
sudo ufw allow 8080/tcp
```

**Enable firewall:**

```bash
sudo ufw --force enable
```

**Check firewall status:**

```bash
sudo ufw status verbose
```

---

## 9. Automated Backup

**Make the backup script executable:**

```bash
chmod +x automation-script.sh
```

**Run the backup script:**

```bash
./automation-script.sh
```

**View backup files:**

```bash
ls -lh backups/
```

**View backup log:**

```bash
cat backups/backup.log
```

---

## 10. Cron

**Open the Cron editor:**

```bash
crontab -e
```

**Schedule the backup to run daily at 2:00 AM:**

```bash
0 2 * * * /bin/bash /FULL/PATH/TO/automation-script.sh
```

Replace `/FULL/PATH/TO/automation-script.sh` with the actual absolute path to your script.

**Verify the Cron job:**

```bash
crontab -l
```

**Check the system date and time:**

```bash
date
```

---

## 11. Verification and Troubleshooting

**Check Docker containers:**

```bash
docker ps -a
```

**Check Docker volumes:**

```bash
docker volume ls
```

**Check firewall status:**

```bash
sudo ufw status verbose
```

**Check Cron service:**

```bash
sudo systemctl status cron
```

**Check backup files:**

```bash
ls -lh backups/
```

**Check backup logs:**

```bash
cat backups/backup.log
```

**Check the script's syntax:**

```bash
bash -n automation-script.sh
```

**Display the current directory:**

```bash
pwd
```

**List project files:**

```bash
ls -la
```

## 12. Restart Procedure

**Stop the application:**

```bash
docker compose down
```

**Start the application:**

```bash
docker compose up -d
```

**Verify the application:**

```bash
docker compose ps
```

---

## 13. Troubleshooting

### WordPress does not load

**Run:**

```bash
docker compose ps
```

**Check the WordPress logs:**

```bash
docker logs $(docker compose ps -q wordpress)
```

### MySQL does not start

**Check the MySQL logs:**

```bash
docker compose logs mysql
```

### Docker is stopped

**Check Docker status:**

```bash
sudo systemctl status docker
```

**Start Docker:**

```bash
sudo systemctl start docker
```

### Docker is stopped

**Run:**

```bash
sudo systemctl status docker
```

**Start Docker:**

```bash
sudo systemctl start docker
```

### Firewall blocks application

**Check:**

```bash
sudo ufw status verbose
```

**Allow application:**

```bash
sudo ufw allow 8080/tcp
```

### Backup fails

**Check:**

```bash
docker ps
```


## 14. Maintenance

Regular maintenance includes:

- Checking Docker containers
- Checking application logs
- Checking database logs
- Checking disk usage
- Checking persistent volumes
- Checking firewall configuration
- Checking backup files
- Testing backup restoration
- Checking Cron configuration

## 15. Recovery

**If the containers stop, restart the application:**

```bash
docker compose up -d
```

**If the server restarts, start Docker:**

```bash
sudo systemctl start docker
```

**Start the application again:**

```bash
docker compose up -d
```

**Verify the containers:**

```bash
docker compose ps
```

Persistent Docker volumes retain application and database data when containers are recreated, provided the volumes are not deleted and the application is configured to use them.

---



## 16. Conclusion

The infrastructure is a multi-tier application running with Docker Compose on Ubuntu Server.

It covers everything from itself to persistent storage, firewall security, automatic database backup, scheduled operations and technical documentation.

These configurations can assist with the reliability of the application, data protection and system maintenance.
