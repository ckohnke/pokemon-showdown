FROM node:10
EXPOSE 8000

WORKDIR /usr/src/pokemon-showdown

COPY * ./
VOLUME /config
COPY config/* /config/

RUN ./pokemon-showdown

CMD ["./pokemon-showdown"]
