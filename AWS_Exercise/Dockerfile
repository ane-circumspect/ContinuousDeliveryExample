FROM ubuntu:latest

CMD tail -f /dev/null

RUN apt-get update &&\
  apt-get -y install nginx

RUN mkdir -pv var/www/html

COPY index.html /var/www/html

EXPOSE 80

EXPOSE 443
