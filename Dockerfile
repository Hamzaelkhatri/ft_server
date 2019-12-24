# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: helkhatr <helkhatr@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/12/23 23:18:51 by helkhatr          #+#    #+#              #
#    Updated: 2019/12/24 00:25:49 by helkhatr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get -y update
RUN apt-get upgrade -y
COPY srcs/config.inc.php ./root
COPY srcs/default ./root
COPY srcs/mysql.sh ./
COPY srcs/Hello.txt ./root
COPY srcs/wp-config.php ./root/
COPY srcs/wordpress/ ./root/wordpress
RUN apt-get -y install php-mbstring
RUN apt-get -y install php-zip
RUN apt-get -y install php-gd
RUN apt-get install -y libnss3-tools
RUN apt-get -y install php-xml
RUN apt-get -y install php-pear
RUN apt-get -y install php-gettext
RUN apt-get -y install php-cli
RUN apt-get -y install php-fpm
RUN apt-get -y install php-cgi
RUN apt-get -y install nginx
RUN apt-get install mariadb-server -y
RUN apt-get install vim -y
RUN apt-get install -y wget
RUN apt-get -y install php-mysql
RUN cp -rf /root/wordpress/* /var/www/html/
CMD cd /var/www/html/
RUN cp /root/default /etc/nginx/sites-available/default
RUN cp /root/config.inc.php /var/www/html/
ENTRYPOINT service mysql start && /bin/bash
ENTRYPOINT sh /mysql.sh && tail -f /dev/null
RUN cp /root/wp-config.php /var/www/html