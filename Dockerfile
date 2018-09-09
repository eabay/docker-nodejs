FROM node:slim

ENV DEBIAN_FRONTEND noninteractive
ENV NODE_ENV production

RUN apt-get update && apt-get install -y supervisor --no-install-recommends && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD supervisor.conf /etc/supervisor/conf.d/app.conf

ONBUILD ADD . /app
WORKDIR /app

VOLUME /logs

CMD ["/usr/bin/supervisord", "-n"]
