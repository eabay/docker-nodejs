FROM mc2labs/nodejs

RUN apt-get update && \
    apt-get install -y build-essential git

ENV NODE_ENV development

RUN npm i -g supervisor

CMD bash
