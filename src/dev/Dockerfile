FROM mc2labs/nodejs

RUN apt-get update && \
    apt-get install -y build-essential git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV NODE_ENV development

RUN npm i -g supervisor && \
    npm cache clean

CMD bash
