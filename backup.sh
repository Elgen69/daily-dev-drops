#!/bin/bash
# backup.sh - Back up documents

SRC=~/Documents
DEST=~/Backups/documents_backup_$(date +%Y%m%d)

mkdir -p "$DEST"
cp -r "$SRC"/* "$DEST"

echo "Backup completed to $DEST"
