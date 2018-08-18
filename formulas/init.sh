echo "+------------------------+"
echo "|     Installing Git     |"
echo "+------------------------+"
sudo apt-get update
sudo apt-get install git

echo "+------------------------+"
echo "|    Installing Nginx    |"
echo "+------------------------+"
sudo apt-get install -y nginx
sudo cp /vagrant/formulas/metaterran /etc/nginx/sites-available/metaterran
sudo cp /vagrant/formulas/test /etc/nginx/sites-available/test

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
