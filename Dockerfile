FROM ruby:2.7.1-slim-buster

RUN apt-get update -qq && apt-get install -y build-essential git vim curl apt-utils

# Install nodejs
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

# yarn
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install yarn

# for postgres
RUN apt-get install -y libpq-dev

RUN mkdir /app
WORKDIR /app

COPY . .
RUN bundle install
RUN yarn install
RUN bundle exec rails db:setup
