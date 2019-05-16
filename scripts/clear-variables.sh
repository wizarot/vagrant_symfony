#!/usr/bin/env bash

# Clear The Old Environment Variables

sed -i '/# Set Homestead Environment Variable/,+1d' /home/vagrant/.profile
sed -i '/env\[.*/,+1d' /etc/php/5.4/fpm/pool.d/www.conf
sed -i '/env\[.*/,+1d' /etc/php/5.6/fpm/pool.d/www.conf
sed -i '/env\[.*/,+1d' /etc/php/7.0/fpm/pool.d/www.conf
sed -i '/env\[.*/,+1d' /etc/php/7.2/fpm/pool.d/www.conf
