#!/usr/bin/env bash
#Install nginx

exec {'Install nginx':
  command  => 'sudo apt-get -y update && sudo apt-get -y install nginx && sudo echo "Holberton School" > /var/www/html/index.nginx-debian.html && new_string="\\\trewrite ^/redirect_me https://www.youtube.com/ permanent;" && sudo sed -i "42i $new_string" /etc/nginx/sites-available/default && sudo service nginx start',
    provider => shell,
    }
