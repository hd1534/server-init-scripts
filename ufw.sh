sudo ufw disable

sudo ufw default deny


sudo ufw allow 22/tcp # ssh
sudo ufw allow 80/tcp # http
sudo ufw allow 443/tcp # https
sudo ufw allow 3000/tcp # usually used in react.js
sudo ufw allow 5000/tcp # usually used in flask
sudo ufw allow 8000/tcp # usually used in fastAPI


sudo ufw enable