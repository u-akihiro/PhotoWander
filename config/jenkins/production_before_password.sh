#!/bin/sh
git clone git@github.com:u-akihiro/PhotoWander.git photowander
cd photowander
bundle install --path .bundle --without development test
bundle exec rails g figaro:install
