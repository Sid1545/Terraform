#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo yum install git -y
sudo git clone https://github.com/anilkumar3577/food.git
cd /food
sudo cp -r * /var/www/html/
sudo systemctl restart httpd

