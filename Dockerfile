FROM node:10

WORKDIR /usr/src/pokemon-showdown

COPY * ./

RUN ./pokemon-showdown

EXPOSE 8000
VOLUME /config
COPY config/* /config/

CMD ["node","pokemon-showdown"]
