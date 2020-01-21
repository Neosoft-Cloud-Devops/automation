#!/bin/bash
MYSQL_PASSWORD="!@Priyankak12"
DATE=$(date +%d-%m-%Y)
BACKUP_DIR="./backup/db-backup"
mysqldump -u root -p$MYSQL_PASSWORD --all-databases | gzip -9 > "$BACKUP_DIR/all-dbs-$DATE.sql.gz"
find $BACKUP_DIR/* -mtime +5 -exec rm {} \;
