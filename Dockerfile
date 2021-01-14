FROM ubuntu:18.04
LABEL maintainer="Szymon Tokarzewski"
RUN apt-get update && apt-get upgrade && apt-get install -y apache2
EXPOSE 80
VOLUME /var/www/html
COPY index.html /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]