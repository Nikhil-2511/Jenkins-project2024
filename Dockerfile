FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN apt-get install git -y
ADD . /var/www/html
EXPOSE 100
ENTRYPOINT apachectl -D FOREGROUND
VOLUME ["/iccpinfotech"]
COPY aditya /tmp
