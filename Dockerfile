FROM ruby:2.5.0-alpine3.7

RUN apk update && apk add tzdata sqlite sqlite-dev nodejs

RUN mkdir /app
WORKDIR /app

ADD Gemfile ./Gemfile
ADD Gemfile.lock ./Gemfile.lock

RUN apk add --virtual .rails-builddeps alpine-sdk && \
    bundle install && \
    apk del .rails-builddeps
