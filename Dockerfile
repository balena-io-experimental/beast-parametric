FROM resin/raspberrypi3-debian:jessie-20161130

WORKDIR /usr/src/app

RUN apt-get update && \
    apt-get -y install \
      fbi \
      imagemagick \
      wget \
   && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY . ./

CMD ./prestart.sh && ./start.sh
