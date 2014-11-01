source 'https://rubygems.org'

gem 'rails', '3.2.15'

gem 'simplecov', :require => false, :group => :test

gem 'mysql2'
gem 'will_paginate', '3.0.3'
gem 'bootstrap-will_paginate', '0.0.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'strong_parameters'
gem 'rspec-its'

group :development, :test do
  gem 'rspec-rails'
  gem 'guard-rspec'
end

group :test do
  gem 'factory_girl_rails', '4.1.0'
  gem 'selenium-webdriver'
  gem 'cucumber-rails', '1.2.1', :require => false
  gem 'database_cleaner', '0.7.0'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  
  gem 'coffee-rails', '~> 3.2.1'
  gem "therubyracer"
  gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  gem "twitter-bootstrap-rails"


  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
