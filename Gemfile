source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'
ruby '2.0.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# gem 'therubyracer'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Use httpclient
gem 'httpclient'

# ENV setting file is config/application.yml
gem 'figaro'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use Spring
gem 'spring'

# Use capistrano to deploy
group :development do
  gem 'capistrano', '~> 3.1.0'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano-env'
  # うまく動作しない
  # gem 'sepastian-capistrano3-unicorn', :require => false
  # gem 'capistrano-unicorn', require: false, github: 'inbeom/capistrano-unicorn', branch: 'capistrano3'
  # Capistrano3では動作しない
  # gem 'capistrano_colors'
end

# Use Travis CI tests
group :test do
  gem 'rake'
  gem 'rspec-rails'
  gem 'simplecov'
  gem 'simplecov-rcov'
  gem 'coveralls', :require => false
  gem 'codeclimate-test-reporter', :require => nil
end

# Use Heroku deploy
group :production do
#  gem 'rails_12factor'
  gem 'pg'
  gem 'newrelic_rpm'
  gem 'unicorn'
end


# Use travis CI command
gem 'travis'
