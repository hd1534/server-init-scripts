# run guacamole
cd ../configs/guacamole/docker
docker compose up -d

# cert
cp ../configs/guacamole/nginx/sites-available /etc/nginx/sites-available/guacamole
sudo ln -s /etc/nginx/sites-available/guacamole /etc/nginx/sites-enabled/guacamole
sudo certbot --non-interactive --redirect --agree-tos --nginx -d "guacamole.${SERVER_DOMAIN}" -m $EMAIL
