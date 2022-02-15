
#!/bin/bash

sed -i "s/$this->user=\"root\";/$this->user=\"$DATABASE_USER\";/g" /var/www/html/core/controller/Database.php
sed -i "s/$this->pass=\"\";/$this->pass=\"$DATABASE_PASSWORD\";/g" /var/www/html/core/controller/Database.php
sed -i "s/$this->host=\"localhost\";/$this->host=\"$DATABASE_HOST\";/g" /var/www/html/core/controller/Database.php
sed -i "s/$this->bbdd=\"localhost\";/$this->ddbb=\"$DB_NAME\";/g" /var/www/html/core/controller/Database.php

sleep 10

mysql -u $DATABASE_USER -p$DATABASE_PASSWORD -h $DATABASE_HOST $DB_NAME < /var/www/html/schema.sql

/usr/sbin/apache2ctl -D FOREGROUND
