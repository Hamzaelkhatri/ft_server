
service mysql start

echo "CREATE DATABASE wordpress;" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root
echo "update mysql.user set plugin = 'mysql_native_password' where user='root';" | mysql -u root

 cd
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-english.tar.gz
tar xzf phpMyAdmin-4.9.0.1-english.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin
cp /root/config.inc.php /var/www/html/phpmyadmin/

chown -R www-data:www-data /var/www/*
chmod -R 755 /var/www/*
echo "GRANT SELECT, INSERT, UPDATE, DELETE ON phpmyadmin.* TO 'hamza'@'localhost' IDENTIFIED BY 'password';"| mysql
echo "GRANT ALL PRIVILEGES ON *.* TO 'hamza'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;"| mysql

mkdir ~/mkcert
cd ~/mkcert  
wget https://github.com/FiloSottile/mkcert/releases/download/v1.1.2/mkcert-v1.1.2-linux-amd64
mv mkcert-v1.1.2-linux-amd64 mkcert
chmod +x mkcert
./mkcert -install
./mkcert localhost

service nginx start
service mysql restart
/etc/init.d/php7.3-fpm start
clear
#chmod 777 ./root/Hello.txt
tail -n 30 ~/Hello.txt