sudo apt install -y certbot python3-certbot-nginx
sudo certbot --non-interactive --redirect --agree-tos --nginx -d $SERVER_DOMAIN -m me@example.com

echo "\r\n0 0 1 * * certbot renew" >> /etc/crontab