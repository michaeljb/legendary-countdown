FROM node:5.1

ENV APP_DIR /app
WORKDIR $APP_DIR

RUN npm install -g webpack@1.12.15
RUN npm install -g typings@0.8.1

COPY package.json $APP_DIR
RUN npm install

COPY typings.json $APP_DIR
RUN typings install

COPY . $APP_DIR
RUN npm run build

EXPOSE 8080

CMD npm run start
