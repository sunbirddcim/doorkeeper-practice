# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.12"

gem "rails", "~> 8.1"
gem "doorkeeper", "~> 5.9.9"
gem "devise", "~> 5.0"
gem "sprockets-rails", require: "sprockets/railtie"
gem 'amazing_print', '~> 1.6'

gem "faker"
gem "jquery-rails"

gem "coderay"
gem "redcarpet"

# Fix nokogiri compilation issues in 1.18 (due to older glibc)
gem 'nokogiri', '~>1.17', '< 1.18'

gem "uglifier"
gem "mini_racer"
gem "pg", "~> 1.6", group: :production
gem "rollbar"

gem "puma"
gem "rack-timeout"

group :development do
  gem "listen"
  gem "rubocop-performance"
  gem "rubocop-rails_config"
end

group :test do
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem 'database_cleaner-active_record'
end

group :development, :test do
  gem "sqlite3", '~> 1.3', '>= 1.3.6'
  gem "pry-rails"
  gem "debug", ">= 1.0.0"
end
