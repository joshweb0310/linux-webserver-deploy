#!/usr/bin/env bash
set -e

SERVER=$1
DOMAIN=$2

if [ -z "$SERVER" ] || [ -z "$DOMAIN" ]; then
    echo "Usage: $0 <nginx|apache> <domain>"
    exit 1
fi

if [ "$SERVER" = "nginx" ]; then
    CONF="/etc/nginx/sites-available/$DOMAIN"
    sudo cp ./config/nginx_default.conf "$CONF"
    sudo sed -i "s/DOMAIN/$DOMAIN/g" "$CONF"
    sudo ln -sf "$CONF" /etc/nginx/sites-enabled/
    sudo nginx -t && sudo systemctl reload nginx
elif [ "$SERVER" = "apache" ]; then
    CONF="/etc/apache2/sites-available/$DOMAIN.conf"
    sudo cp ./config/apache_default.conf "$CONF"
    sudo sed -i "s/DOMAIN/$DOMAIN/g" "$CONF"
    sudo a2ensite "$DOMAIN"
    sudo systemctl reload apache2
else
    echo "Invalid server type: $SERVER"
    exit 1
fi

echo "[+] Site deployed for $DOMAIN using $SERVER."
