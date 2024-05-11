#!/bin/bash
# package updates
sudo apt update
sudo apt upgrade -y
# apache installation, enabling and status check
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl status apache2 | grep Active
# firewall installation, start and status check
sudo apt install ufw -y
sudo ufw enable
sudo ufw status
# adding http and https services
sudo ufw allow 'Apache'
# acquiring the ip address for access to the web server
echo "This is the public IP address: $(curl -4 icanhazip.com)"
# adding the needed permissions for creating and editing the index.html file
sudo chown -R $USER:$USER /var/www/html
# creating the html landing page
cd /var/www/html/
echo '<!DOCTYPE html>' > index.html
echo '<html>' >> index.html
echo '<head>' >> index.html
echo '<title>Level It Up</title>' >> index.html
echo '<meta charset="UTF-8">' >> index.html
echo '</head>' >> index.html
echo '<body>' >> index.html
echo '<h1>Welcome to Level Up in Tech</h1>' >> index.html
echo '<h3>Red Team</h3>' >> index.html
echo '</body>' >> index.html
echo '</html>' >> index.html
