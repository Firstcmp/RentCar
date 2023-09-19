FROM ubuntu
RUN apt update -y
RUN apt install git -y
RUN apt install apache2 -y
ENTRYPOINT apachectl -D FOREGROUND
RUN cd /var/www/html && \
    git clone https://github.com/MYTCS/RentCar.git
