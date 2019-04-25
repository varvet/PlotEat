# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.2"

gem "rails", "~> 5.2.3"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 3.11"
gem "sassc-rails"
gem "uglifier", ">= 1.3.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "bootsnap", ">= 1.1.0", require: false
gem "bootstrap", "~> 4.0.0"
gem "jquery-rails"
gem 'sorcery'

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "rubocop", "0.66", require: false
  gem "rubocop-rspec"
  gem "cucumber-rails", require: false
  gem "database_cleaner"
  gem "rspec-rails"
  gem "shoulda-matchers"
  gem "simplecov", require: false, group: :test
  gem "pry-rails"
  gem "chromedriver-helper"
  gem "selenium-webdriver"
  gem "launchy"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end
