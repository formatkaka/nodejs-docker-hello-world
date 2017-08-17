FROM node:6.9.4

ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /app && cp -a /tmp/node_modules /app

WORKDIR /app

COPY . /app

RUN ls /app

EXPOSE 3000

ENTRYPOINT ["npm", "start"]
