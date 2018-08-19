echo "+------------------------+"
echo "|       Get Updates      |"
echo "+------------------------+"
sudo apt-get update

echo "+------------------------+"
echo "|     Installing Git     |"
echo "+------------------------+"
sudo apt-get update
sudo do-release-upgrade
sudo apt-get install git

echo "+------------------------+"
echo "|    Installing Nginx    |"
echo "+------------------------+"
sudo apt-get install -y nginx
sudo cp /vagrant/formulas/metaterran /etc/nginx/sites-available/metaterran
sudo cp /vagrant/formulas/nginx.conf.terra /etc/nginx/nginx.conf
sudo ln -s /etc/nginx/sites-available/metaterran /etc/nginx/sites-enabled/metaterran
sudo rm -rf /etc/nginx/sites-available/default
sudo rm -rf /etc/nginx/sites-enabled/default

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
