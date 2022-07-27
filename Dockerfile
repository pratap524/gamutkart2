FROM ubuntu
RUN apt-get update
RUN apt-get install -y openjdk-11-jdk
ENV JAVA_HOME /usr
RUN apt install nginx -y
COPY target/gamutgurus.war var/lib/www
ENTRYPOINT service nginx start && bash

