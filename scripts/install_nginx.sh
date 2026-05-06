#!/usr/bin/env bash
set -e

echo "[+] Updating package index..."
sudo apt update -y

echo "[+] Installing Nginx..."
sudo apt install nginx -y

echo "[+] Enabling and starting Nginx..."
sudo systemctl enable nginx
sudo systemctl start nginx

echo "[+] Nginx installed successfully."
