#!/bin/sh
bundle install --path .bundle
bundle exec rails g figaro:install
bundle exec cap production deploy
