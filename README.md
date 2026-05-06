# Linux Webserver Deploy Toolkit

A modular, script‑driven toolkit for deploying, securing, and managing Linux web servers using Nginx or Apache.  
Designed for fast setup, repeatable deployments, and real‑world sysadmin workflows.

---

## 🚀 Features

- Install Nginx or Apache with one command  
- Deploy site configurations automatically  
- Enable SSL using Certbot + Let's Encrypt  
- Configure UFW firewall rules  
- Apply server hardening with Fail2ban  
- Roll back deployments instantly  
- Includes config templates for both web servers  
- Fully documented with usage guides  

---

## 📁 Project Structure

linux-webserver-deploy/
│
├── scripts/
│   ├── install_nginx.sh
│   ├── install_apache.sh
│   ├── setup_firewall.sh
│   ├── deploy_site.sh
│   ├── enable_ssl.sh
│   ├── harden_server.sh
│   └── rollback.sh
│
├── config/
│   ├── nginx_default.conf
│   ├── apache_default.conf
│   └── fail2ban_jail.local
│
└── docs/
├── INSTALLATION.md
├── USAGE.md
├── HARDENING.md
├── SSL_SETUP.md
└── FIREWALL.md

Code

---

## 📘 Documentation

Full documentation is available in the `docs/` directory:

- **INSTALLATION.md** — Setup instructions  
- **USAGE.md** — How to run each script  
- **HARDENING.md** — Security features explained  
- **SSL_SETUP.md** — SSL certificate setup  
- **FIREWALL.md** — Firewall configuration  

---

## 🛠 Requirements

- Ubuntu/Debian-based Linux system  
- sudo privileges  
- Git installed  
- (Optional) A registered domain for SSL  

---

## 🧩 Quick Start

Clone the repo:

```bash
git clone https://github.com/joshweb0310/linux-webserver-deploy.git
cd linux-webserver-deploy
chmod +x scripts/*.sh
Install a web server:

bash
./scripts/install_nginx.sh
Deploy a site:

bash
./scripts/deploy_site.sh nginx example.com
Enable SSL (requires real domain):

bash
./scripts/enable_ssl.sh example.com youremail@example.com
🧨 Rollback
If anything goes wrong:

bash
./scripts/rollback.sh
This removes all site configs and reloads services.

📌 About This Project
This toolkit was built to demonstrate:

Linux server administration

Web server configuration

Automation with Bash

Security hardening

Deployment workflows

It’s a strong portfolio piece for sysadmin, DevOps, and hosting‑related roles.

🤝 Contributions
Pull requests and suggestions are welcome.

📄 License
MIT License.
