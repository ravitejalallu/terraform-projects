#! /bin/bash
sudo yum install -y httpd 
sudo systemctl start httpd
sudo systemctl enable httpd
echo "Welcome to terraform projects" | sudo tee /var/www/html/index.html