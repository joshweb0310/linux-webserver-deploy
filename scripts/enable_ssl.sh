#!/usr/bin/env bash
set -e

DOMAIN=$1

if [ -z "$DOMAIN" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

echo "[+] Installing Certbot..."
sudo apt install certbot python3-certbot-nginx -y

echo "[+] Requesting SSL certificate for $DOMAIN..."
sudo certbot --nginx -d "$DOMAIN" --non-interactive --agree-tos -m admin@"$DOMAIN"

echo "[+] SSL enabled for $DOMAIN."
