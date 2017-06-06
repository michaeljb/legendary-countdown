FROM node:7.10.0

ENV APP_DIR /app
ENV TMP_DIR /tmp

EXPOSE 8080

WORKDIR $TMP_DIR
COPY package.json yarn.lock ./
RUN yarn install

WORKDIR $APP_DIR
RUN rm -rf node_modules && \
    cp -a $TMP_DIR/node_modules node_modules

COPY . ./
