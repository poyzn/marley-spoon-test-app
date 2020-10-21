#!/bin/bash

cd /app

bundle install
yarn install
bundle exec rails webpacker:compile
bundle exec rails db:setup
bundle exec rails s