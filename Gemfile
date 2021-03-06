ruby '2.0.0'
source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.1'

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

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

# Use unicorn as the app server
gem 'unicorn', group: :production

gem 'thin', group: :development
gem 'pry-rails', group: :development

gem 'annotate', group: :development

# debug
group :development do
  gem 'binding_of_caller'
  gem 'better_errors'
end

# authorization
gem 'devise'

# same as helper, but drapper
gem 'draper'

# templating
gem 'slim-rails'

gem 'twitter-bootstrap-rails'
gem 'rails_12factor'
gem 'russian', git: 'https://github.com/yaroslav/russian.git'

# moar pagination
gem 'kaminari'
gem 'bootstrap-kaminari-views'

# Just as said ^^
gem 'statemachine'

# Just as said ^^
gem 'simple_form'

# metasearch alternative
gem 'ransack'

# JS framework
gem 'angular-rails'

# roles
gem 'cancan'
gem 'rolify'

# DRY controllers
gem 'responders'

# some spec
group :test, :development do
  gem 'rspec-rails'
end

group :test do
  gem 'shoulda-matchers'

	gem 'factory_girl_rails'
	gem 'faker'
	gem 'database_cleaner'
	gem 'rspec-set'
	gem 'simplecov'
end

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
