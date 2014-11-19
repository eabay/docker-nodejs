FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y software-properties-common && \
    add-apt-repository ppa:chris-lea/node.js && \
    apt-get update && \
    apt-get install -y nodejs

RUN apt-get install -y supervisor
ADD supervisor.conf /etc/supervisor/conf.d/app.conf

ONBUILD ADD . /app
WORKDIR /app

VOLUME /logs

ENV NODE_ENV production

RUN npm i -g coffee-script

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/usr/bin/supervisord", "-n"]
