# Firewall Configuration Guide

This document explains how the firewall setup works in the linux-webserver-deploy toolkit.

## Overview
The toolkit uses **UFW (Uncomplicated Firewall)** to manage network access.

UFW is a simple and effective firewall for Ubuntu/Debian systems.

## What setup_firewall.sh Does

### 1. Allows HTTP and HTTPS
The script enables traffic for both Nginx and Apache profiles.

```bash
sudo ufw allow 'Nginx Full'
sudo ufw allow 'Apache Full'
