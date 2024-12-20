#!/bin/bash

# Diretórios de saída
ONLINE_DIR="/var/log/nginx_status/online"
OFFLINE_DIR="/var/log/nginx_status/offline"

# Certifique-se de que os diretórios existem
mkdir -p "$ONLINE_DIR" "$OFFLINE_DIR"

# Data e hora
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Nome do serviço
SERVICE="nginx"

# Checar o status do serviço
if systemctl is-active --quiet "$SERVICE"; then
    STATUS="ONLINE"
    MESSAGE="O serviço $SERVICE está funcionando corretamente."
    echo "$TIMESTAMP - $SERVICE - $STATUS - $MESSAGE" >> "$ONLINE_DIR/$SERVICE.log"
else
    STATUS="OFFLINE"
    MESSAGE="O serviço $SERVICE não está funcionando!"
    echo "$TIMESTAMP - $SERVICE - $STATUS - $MESSAGE" >> "$OFFLINE_DIR/$SERVICE.log"
fi


