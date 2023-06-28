#!/bin/bash

#Description: script to automate an App on centos server.
#Author: Marcelle
#Date: june 2023

echo "Beginning automation"

yum update -y

echo "Installing all packages"

yum install unzip wget httpd -y
wget https://github.com/utrains/static-resume/archive/refs/heads/main.zip
unzip main.zip
rm -rf /var/www/html/*
cp -r static-resume-main/iPortfolio/* /var/www/html/
systemctl start httpd
systemctl enable httpd
echo "configurations done "
