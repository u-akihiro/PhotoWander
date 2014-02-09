#!/bin/sh
bundle install --path .bundle --without development test
bundle exec rails g figaro:install
