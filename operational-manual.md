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


