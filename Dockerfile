FROM node:boron

COPY . /app
WORKDIR /app

RUN npm install 
RUN npm test
RUN rm -r node_modules
RUN npm install --production

ENTRYPOINT [ "node", "server.js"]