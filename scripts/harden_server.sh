#!/usr/bin/env bash
set -e

echo "[+] Installing Fail2ban..."
sudo apt install fail2ban -y

echo "[+] Applying custom jail.local..."
sudo cp ./config/fail2ban_jail.local /etc/fail2ban/jail.local

echo "[+] Restarting Fail2ban..."
sudo systemctl restart fail2ban

echo "[+] Server hardening applied."
