FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
ARG SERVICE_NAME
COPY html/${SERVICE_NAME}/ /var/www/html/
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
