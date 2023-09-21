FROM ubuntu
RUN apt-get update -y
RUN apt-get install git -y
RUN apt-get install apache2 -y
ENTRYPOINT apachectl -D FOREGROUND
RUN cd /var/www/html && \
    git clone https://github.com/shashikanth-t/knights.git
