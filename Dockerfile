FROM node:20.5.1

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

RUN chown -R node:node /usr/src/app

USER node

COPY --chown=node:node . .

RUN npm install

ENV TZ=Asia/Tokyo