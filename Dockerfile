FROM ubuntu
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
ENV JAVA_HOME /usr
RUN apt install nginx -y
COPY target/gamutgurus.war var/www/html
ENTRYPOINT service nginx start && bash

