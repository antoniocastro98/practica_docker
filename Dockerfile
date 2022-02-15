FROM debian
RUN apt-get update  && apt upgrade && apt-get install -y  apache2 libapache2-mod-php7.4 php7.4 php7.4-mysql mariadb-client 
RUN rm /var/www/html/index.html
ADD bookmedik /var/www/html
ADD script.sh /home/
RUN chmod +x /home/script.sh 
CMD ["bash","/home/script.sh"]
