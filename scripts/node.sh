#!/bin/bash

set -e

JOIN_CMD_FILE="/vagrant/join-command.sh"

# Aguarda o master gerar o join-command.sh
echo "[node] Esperando pelo join-command.sh..."
while [ ! -f "$JOIN_CMD_FILE" ]; do
    sleep 5
done

echo "[node] join-command.sh encontrado. Ingressando no cluster..."
bash "$JOIN_CMD_FILE"
