#This script will be used to deploy any webpages which you have a link and name of zip file to (centos7):

*********************************
#!/bin/bash

sudo yum install wget unzip httpd -y

sudo systemctl start httpd
sudo systemctl enable http

mkdir -p /tmp/webfiles
cd /tmp/webfiles


wget $1
unzip $2.zip
cp -r $2/* /var/www/html/

sudo systemctl restart httpd

## Remove /webfiles directory

rm -rf /tmp/webfiles

*********************************
Run this commands:

chmod +x ./scriptname

./scriptname @1 @2

@1: link to the zip file
@2: name of the file after it is extarcted.
