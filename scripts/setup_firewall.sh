#!/usr/bin/env bash
set -e

echo "[+] Allowing HTTP and HTTPS through UFW..."

# Allow Nginx profiles if installed
sudo ufw allow 'Nginx Full' 2>/dev/null || true

# Allow Apache profiles if installed
sudo ufw allow 'Apache Full' 2>/dev/null || true

echo "[+] Enabling UFW..."
sudo ufw --force enable

echo "[+] Firewall configured successfully."
