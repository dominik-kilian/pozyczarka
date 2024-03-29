# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4'
gem 'redis', '~> 4.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'devise'

group :development, :test do
  gem 'brakeman', '~> 5.4'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rails_best_practices', '~> 1.23', '>= 1.23.2'
  gem 'rubocop', '~> 1.42', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
  gem 'faker'
  gem 'factory_bot_rails'
end

group :development do
  gem 'annotate', '~> 3.2'
  gem 'web-console'
  gem 'hotwire-livereload'
end

group :test do
  gem 'rspec-rails', '~> 6.0', '>= 6.0.1'
  gem 'shoulda-matchers', '~> 5.0'
  gem 'database_cleaner-active_record'
  gem 'rails-controller-testing'
  gem 'capybara'
end
