#!/usr/bin/env bash
set -e

echo "[+] Rolling back web server configuration..."

# Remove Nginx site configs
sudo rm -f /etc/nginx/sites-enabled/*
sudo rm -f /etc/nginx/sites-available/*

# Remove Apache site configs
sudo rm -f /etc/apache2/sites-enabled/*
sudo rm -f /etc/apache2/sites-available/*

# Reload services
sudo systemctl reload nginx 2>/dev/null || true
sudo systemctl reload apache2 2>/dev/null || true

echo "[+] Rollback complete."
