FROM ubuntu
RUN apt-get update
RUN apt install nginx -y
COPY target/gamutgurus.war var/www/html
ENTRYPOINT service nginx start && bash

