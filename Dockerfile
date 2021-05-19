FROM ruby:2.7.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev git-core curl openssl libssl-dev
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
RUN mkdir /vakra
WORKDIR /vakra
ADD Gemfile /vakra/Gemfile
ADD Gemfile.lock /vakra/Gemfile.lock
RUN bundle install
ADD . /vakra