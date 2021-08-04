#!/bin/bash
sudo su
sudo yum install -y yum-utils
sudo yum update -y && sudo yum install -y docker
sudo systemctl start docker
sudo usermod -aG docker ec2-user
docker pull bkimminich/juice-shop
docker run -d -p 80:3000 bkimminich/juice-shop

