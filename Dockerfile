FROM node:9-alpine

WORKDIR /usr/src/app

ADD package.json /usr/src/app
ADD yarn.lock /usr/src/app

RUN yarn install

ADD . /usr/src/app

CMD ["node", "index.js"]
