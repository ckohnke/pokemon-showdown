FROM node:12.16.3
RUN apt-get update && apt-get install -y nano && apt-get clean

WORKDIR /usr/src/pokemon-showdown

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .
VOLUME /config

EXPOSE 8000
CMD ["node","pokemon-showdown"]
