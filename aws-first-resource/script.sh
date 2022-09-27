#!/bin/bash
sudo apt-get update -y
sudo apt-get install apache2 -y
systemctl start apache2
systemctl enable apache2
cd /var/www/html
echo "<h1> hello, shubham</h1>" >index.html
