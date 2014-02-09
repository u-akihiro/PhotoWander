#!/bin/sh
bundle install --path .bundle --without production
bundle exec rake db:drop db:create db:migrate RAILS_ENV=test
bundle exec rake db:test:clone
bundle exec rspec
