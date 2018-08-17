echo "+------------------------+"
echo "|     Installing Git     |"
echo "+------------------------+"
sudo apt-get update
sudo apt-get install git

echo "+------------------------+"
echo "|    Installing Nginx    |"
echo "+------------------------+"
sudo apt-get install -y nginx
sudo cp /vagrant/formulas/default /etc/nginx/sites-available/default

echo "+------------------------+"
echo "|   Installing NodeJS    |"
echo "+------------------------+"
sudo apt-get install -y nodejs
sudo apt-get install -y npm
sudo ln -s /usr/bin/nodejs /usr/bin/node

echo "+------------------------+"
echo "|    Restart Services    |"
echo "+------------------------+"
sudo service nginx restart
