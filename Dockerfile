FROM ruby:2.3.3-slim

ARG BUNDLE_ARGS="--without development test"

RUN mkdir /lotbk
COPY Gemfile /lotbk/Gemfile
COPY Gemfile.lock /lotbk/Gemfile.lock
WORKDIR /lotbk

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs libsqlite3-dev && bundle install --jobs=4 --retry=3 $BUNDLE_ARGS

COPY . /lotbk

EXPOSE 3000

ENTRYPOINT [bin/entrypoint]
