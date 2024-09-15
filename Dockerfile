FROM httpd:2.4

COPY ./public-html/ /usr/local/apache2/htdocs/
COPY ./httpd.txt /usr/local/apache2/conf/httpd.conf

RUN apt-get update && \
    apt-get install -y vim git openssh-client apache2
RUN mkdir -p /var/log/apache2/
RUN a2enmod proxy
RUN a2enmod proxy_http
RUN a2enmod proxy_wstunnel
RUN a2enmod proxy_ajp
RUN a2enmod rewrite
RUN a2enmod deflate
RUN a2enmod headers
RUN a2enmod proxy_balancer
RUN a2enmod proxy_connect
RUN a2enmod lbmethod_byrequests

RUN service apache2 restart
