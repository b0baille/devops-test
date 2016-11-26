FROM ruby:2.3.0

RUN mkdir /app
WORKDIR /app

ADD Gemfile /app
ADD Gemfile.lock /app
RUN bundle install --without development test

ADD . /app

ENV RACK_ENV=production
ENV RAILS_ENV=production

RUN rake assets:precompile
