#!/bin/bash
apt update
apt install -y apache2 php php-mysql mysql-client unzip wget
wget https://wordpress.org/latest.zip
unzip latest.zip
cp -r wordpress/* /var/www/html/
chown -R www-data:www-data /var/www/html/
chmod -R 755 /var/www/html/

# Create wp-config.php
cat >/var/www/html/wp-config.php <<EOL
<?php
define( 'DB_NAME', '${mysql_db}' );
define( 'DB_USER', '${mysql_user}' );
define( 'DB_PASSWORD', '${mysql_password}' );
define( 'DB_HOST', '${mysql_private_ip}' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );
\$table_prefix = 'wp_';
define( 'WP_DEBUG', false);
if ( ! defined( 'ABSPATH') ) {
  define('ABSPATH', __DIR__ .'/');
}
require_once ABSPATH . 'wp-settings.php';
EOL

systemctl restart apache2
