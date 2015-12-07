

sudo docker-compose rmi postgres-zen
sudo docker-compose rmi zen

sudo docker-compose up -d postgres-zen
sudo docker-compose run --rm zen bash /user/src/app/setup/02_initialize.sh







echo "You must use \"sudo docker\" now to issue docker commands. If you log out and in, you do not need sudo any more."
