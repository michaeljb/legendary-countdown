FROM ruby:2.0.0

ENV APP_DIR /app
WORKDIR $APP_DIR
EXPOSE 4567

COPY Gemfile $APP_DIR
COPY Gemfile.lock $APP_DIR
RUN bundle install --path vendor/bundle

COPY . $APP_DIR
