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

**Check firewall status:**

```bash
sudo ufw status verbose
```

---

## 9. Verification

**List all Docker volumes:**

```bash
docker volume ls
```

**Check firewall status:**

```bash
sudo ufw status
```

