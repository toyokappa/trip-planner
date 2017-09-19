FROM ruby:2.4.1-alpine3.6

ENV APP_ROOT /usr/src/trip-planner

RUN echo 'http://dl-4.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories

RUN apk update && \
  apk add --update alpine-sdk && \
  apk add nodejs-current \
    yarn \
    postgresql-dev \
    tzdata && \
  cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
  rm -rf /var/cache/apk/* && \
  rm /usr/lib/libmysqld*

COPY Gemfile $APP_ROOT/
COPY Gemfile.lock $APP_ROOT/

RUN bundle install

VOLUME $APP_ROOT/tmp/

COPY . $APP_ROOT
