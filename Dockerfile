FROM ruby:2.6.0
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /escola_devworks
WORKDIR /escola_devworks
COPY Gemfile /escola_devworks/Gemfile
COPY Gemfile.lock /escola_devworks/Gemfile.lock
RUN bundle install
COPY . /escola_devworks