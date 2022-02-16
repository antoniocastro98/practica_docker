FROM php:7.4-apache-bullseye
RUN apt-get update  && apt upgrade -y && apt-get install -y  mariadb-client apache2
#RUN rm /var/www/html/index.html
ADD bookmedik /var/www/html
ADD script.sh /home/
RUN chmod +x /home/script.sh
CMD ["bash","/home/script.sh"]

