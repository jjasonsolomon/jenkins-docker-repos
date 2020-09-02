#!/bin/bash 

#Starting PHP

/usr/sbin/php-fpm


echo "**Starting PHP***"

#Starting NGINX


nginx -g 'daemon off;'




echo "**Starting NGINX***"
