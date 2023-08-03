# run guacamole
cd ../configs/guacamole/docker
mkdir ./init
chmod -R +x ./init
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --postgresql > ./init/initdb.sql
docker compose up -d

# cert
cp ../configs/guacamole/nginx/sites-available /etc/nginx/sites-available/guacamole
sudo ln -s /etc/nginx/sites-available/guacamole /etc/nginx/sites-enabled/guacamole
sudo certbot --non-interactive --redirect --agree-tos --nginx -d "guacamole.${SERVER_DOMAIN}" -m $EMAIL
