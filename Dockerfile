FROM ruby:2.5.3
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /tracker
WORKDIR /tracker
COPY Gemfile Gemfile.lock /tracker/
RUN bundle install
COPY . /tracker
