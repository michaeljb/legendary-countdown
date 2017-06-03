FROM node:7.10.0

ENV APP_DIR /app

EXPOSE 8080

WORKDIR /tmp
COPY package.json /tmp
COPY yarn.lock /tmp
RUN yarn install

WORKDIR $APP_DIR

COPY . $APP_DIR
