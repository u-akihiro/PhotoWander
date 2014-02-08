#!/bin/bash
bundle install --path .bundle --without production
bundle exec rake db:drop db:create db:migrate
# bundle exec rake db:test:clone
# bundle exec rspec
