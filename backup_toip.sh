#!/bin/bash

# Variables
OWNCLOUD_DIR="/var/lib/docker/volumes/8bd46db098016ff43756d3fc6afbb876aa91ee52be5bf208894f52eb1a/_data/data/admin/files/toip"  # Répertoire toip
ARCHIVE_DIR="/home/Owncloud-sync"  # Répertoire archive

# Générer le timestamp
TIMESTAMP=$(date "+%d-%m-%Y_%H:%M:%S")

# Sauvegarde locale du fichier CSV
CSV_FILE="$OWNCLOUD_DIR/.csv"
BACKUP_FILE="$ARCHIVE_DIR/sio2-$TIMESTAMP.csv"

# Vérifier si le fichier existe
#if [ -f "$CSV_FILE" ]; then
#    cp "$CSV_FILE" "$BACKUP_FILE"
#    echo "Sauvegarde locale effectuée : $BACKUP_FILE"
#else
#    echo "Aucun fichier CSV trouvé dans $OWNCLOUD_DIR"
#    exit 1
#fi

# Compression du répertoire toip
ZIP_FILE="/tmp/sio2-$TIMESTAMP.zip"
zip -r "$ZIP_FILE" "$OWNCLOUD_DIR"
echo "Compression effectuée : $ZIP_FILE"
