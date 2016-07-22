FROM ruby:2.3.1-slim
MAINTAINER mingqian.ye@gmail.com

RUN apt-get update
RUN apt-get install -y build-essential libpq-dev vim

WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install --without development test

ADD . /myapp
WORKDIR /myapp

ENV RAILS_ENV=production
RUN bundle exec rake assets:precompile --trace
