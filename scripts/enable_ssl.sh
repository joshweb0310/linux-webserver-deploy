#!/usr/bin/env bash
set -e

DOMAIN=$1
EMAIL=$2

if [ -z "$DOMAIN" ] || [ -z "$EMAIL" ]; then
    echo "Usage: $0 <domain> <email>"
    exit 1
fi

echo "[+] Installing Certbot..."
sudo apt install certbot python3-certbot-nginx -y

echo "[+] Requesting SSL certificate for $DOMAIN..."
sudo certbot --nginx -d "$DOMAIN" --non-interactive --agree-tos -m "$EMAIL"

echo "[+] SSL enabled for $DOMAIN."
