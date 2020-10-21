FROM ruby:2.7.1-slim-buster

RUN apt-get update -qq && apt-get install -y build-essential curl nodejs

# yarn
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install yarn

# for postgres
RUN apt-get install -y libpq-dev

RUN mkdir /app
WORKDIR /app

COPY . .
