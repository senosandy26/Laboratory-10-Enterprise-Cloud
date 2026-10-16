# Create MySQL database backup
docker exec "$CONTAINER_NAME" \
    mysqldump \
    -u"$DATABASE_USER" \
    -p"$DATABASE_PASSWORD" \
    "$DATABASE_NAME" > "$BACKUP_FILE"

# Check backup result
if [ $? -eq 0 ]; then

    gzip "$BACKUP_FILE"

    echo "Database backup completed successfully." >> "$LOG_FILE"
    echo "Backup file: ${BACKUP_FILE}.gz" >> "$LOG_FILE"

    # Delete backups older than 7 days
    find "$BACKUP_DIR" \
        -type f \
        -name "wordpress_database_*.sql.gz" \
        -mtime +7 \
        -delete

    echo "Old backups removed." >> "$LOG_FILE"

else

    echo "ERROR: Database backup failed." >> "$LOG_FILE"
    exit 1

fi

echo "Backup finished: $(date)" >> "$LOG_FILE"
echo "========================================" >> "$LOG_FILE"

exit 0
