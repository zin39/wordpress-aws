#! /bin/bash

apt update
apt install -y mysql-server
systemctl start mysql
mysql -e "CREATE DATABASE ${db_name};"
mysql -e "CREATE USER '${db_user}'@'%' IDENTIFIED BY '${db_password}';"
mysql -e "GRANT ALL PRIVILEGES ON ${db_name}.* TO '${db_user}'@'%';"
mysql -e "FLUSH PRIVILEGES;"
