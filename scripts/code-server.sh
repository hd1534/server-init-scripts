curl -fsSL https://code-server.dev/install.sh | sh

# https://coder.com/docs/code-server/latest/guide#using-lets-encrypt-with-nginx
cp ../configs/code-server/nginx/sites-available /etc/nginx/sites-available/code-server
sudo ln -s /etc/nginx/sites-available/code-server /etc/nginx/sites-enabled/code-server
sudo certbot --non-interactive --redirect --agree-tos --nginx -d "vscode.${SERVER_DOMAIN}" -m $EMAIL

adduser --gecos "" --disabled-password vscode
chpasswd <<<"vscode:vscode"  # set password
# usermod -aG sudo vscode  # grant sudo permission

sudo systemctl enable --now code-server@vscode
