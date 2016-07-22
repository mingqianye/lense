FROM ruby:2.3.1-slim
RUN apt-get update -qq
RUN apt-get install -y build-essential libpq-dev vim

RUN mkdir /myapp
WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install

ADD . /myapp
WORKDIR /myapp

RUN RAILS_ENV=production bundle exec rake assets:precompile --trace
