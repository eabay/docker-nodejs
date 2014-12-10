FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup | bash - && \
    apt-get install -y nodejs && \
    apt-get install -y supervisor && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV NODE_ENV production

RUN npm i -g coffee-script && \
    npm cache clean

ADD supervisor.conf /etc/supervisor/conf.d/app.conf

ONBUILD ADD . /app
WORKDIR /app

VOLUME /logs

CMD ["/usr/bin/supervisord", "-n"]
