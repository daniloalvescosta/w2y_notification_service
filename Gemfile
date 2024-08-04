source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "bootsnap", require: false
gem "pg", "~> 1.1"
gem 'pry'
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.8", ">= 7.0.8.4"
gem 'redis'
gem 'rubocop'
gem 'sidekiq', '~> 6.0'
gem 'sidekiq-status'
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem 'rspec-rails'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'factory_bot_rails'
  gem 'rubocop-rspec'
end

group :development do
end
