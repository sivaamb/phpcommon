FROM ubuntu:16.04
MAINTAINER siva sivaamb@gmail.com
RUN apt-get update
RUN apt-get install -y apache2
RUN service apache2 start

#Install PHP
RUN apt-get install -y php libapache2-mod-php php-mcrypt php-mysql
RUN service apache2 restart
RUN apt-get install -y php-cli
RUN apt-get install -y php7.0-xml
RUN apt-get install -y php7.0-pgsql
RUN apt-get install -y subversion
RUN service apache2 restart

#Install postgreSQL
RUN apt-get install wget ca-certificates
RUN apt-get update
RUN apt-get install -y postgresql postgresql-contrib
RUN service postgresql start
