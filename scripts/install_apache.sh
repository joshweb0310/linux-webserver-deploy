#!/usr/bin/env bash
set -e

echo "[+] Updating package index..."
sudo apt update -y

echo "[+] Installing Apache..."
sudo apt install apache2 -y

echo "[+] Enabling and starting Apache..."
sudo systemctl enable apache2
sudo systemctl start apache2

echo "[+] Apache installed successfully."
