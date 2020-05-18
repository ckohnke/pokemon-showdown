FROM node:14
EXPOSE 8000

WORKDIR /usr/src/pokemon-showdown

COPY * ./
VOLUME /config
COPY config/* /config/

RUN ./pokemon-showdown

CMD ["node","pokemon-showdown"]
