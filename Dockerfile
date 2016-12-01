FROM resin/rpi-raspbian:jessie-20160511

WORKDIR /usr/src/app

RUN apt-get update && apt-get -y install fbi imagemagick

COPY . /usr/src/app

CMD ./prestart.sh && ./start.sh
