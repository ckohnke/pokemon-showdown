FROM node:14
RUN apt-get update && apt-get install -y nano && apt-get clean

WORKDIR /usr/src/pokemon-showdown

COPY * ./
VOLUME /config
COPY config/* /config/

RUN npm install

EXPOSE 8000
CMD ["node","pokemon-showdown"]
