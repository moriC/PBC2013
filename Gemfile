source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'

gem 'json'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem "therubyracer"

  gem 'uglifier', '>= 1.0.3'

  gem 'less'
  gem 'turbo-sprockets-rails3'
end

gem 'turbolinks'
gem 'jquery-rails', '2.0.1'
gem 'jquery-turbolinks'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'
gem 'rvm-capistrano'
gem 'capistrano-unicorn', :require => false
gem "capistrano_database_yml", :require => false

group :test, :development do
  gem "rspec-rails", "~> 2.6"
  gem "capybara"
end

# guard
group :development do
  gem 'guard'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-cucumber'
  gem 'guard-rails'
  gem 'ruby_gntp'
end

group :test do
  gem "cucumber-rails", require: false
  gem "database_cleaner"
end

group :development do
  gem "rails-erd"
  gem "thin"
  gem 'yard-rails', require: false
  gem 'yard-cucumber', require: false
  gem "better_errors"
end

gem 'devise'
gem 'devise-encryptable'
gem 'cancan'
gem 'kaminari'
gem 'factory_girl_rails'

gem 'twitter-bootstrap-rails'
gem "less-rails"

gem 'jquery_mobile_rails'
gem 'jpmobile'

# console support
gem 'awesome_print'
gem 'pry-rails'
gem "debugger-pry", :require => "debugger/pry"
