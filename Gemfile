source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

gem 'rails', '>= 5.2.4.3'
gem 'puma', '~> 4.3'
gem 'sass-rails', '>= 5.2'
gem 'chartkick', '>= 3.3.0'
gem 'devise', '>= 4.7.1'
gem 'devise-bootstrap-views'
gem 'font-awesome-rails'
gem 'hirb'
gem 'iex-ruby-client'
gem 'jquery-rails'
gem 'twitter-bootstrap-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'nokogiri', '>= 1.10.4'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'factory_bot_rails'
  gem 'sqlite3'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 3.9'
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  gem 'rubocop', '~> 0.76.0', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'geckodriver-helper'
  gem 'chromedriver-helper'
  gem 'simplecov'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
