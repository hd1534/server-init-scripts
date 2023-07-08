source .env
echo ---------ENV---------
cat .env
echo -------ENV-END-------

sudo apt update
sudo ./scripts/ufw.sh
sudo ./scripts/git.sh
sudo ./scripts/nginx.sh
sudo ./scripts/certbot.sh
sudo ./scripts/code-server.sh