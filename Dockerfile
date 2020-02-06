FROM debian:10

RUN 	set -eux ; \
	apt update ; \
	apt -y install curl libapache2-mod-php php-xml php-gd php-mysql php-redis ; \
	a2enmod rewrite ; \
	a2dismod status ; \
	rm -f /var/www/html/*

COPY 	index.php /var/www/html



EXPOSE 80

CMD [ "/usr/sbin/apachectl", "-D", "FOREGROUND" ]
