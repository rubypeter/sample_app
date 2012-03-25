source 'https://rubygems.org'

gem 'rails', '3.2.2'

#This includes rspec-rails in development mode so that we have access to RSpec-specific generators, and it includes it in test mode in order to run the tests

group :development, :test do
  gem 'sqlite3', '1.3.5'
  gem 'rspec-rails', '2.9.0'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.4'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.0'

group :test do
  gem 'capybara', '1.1.2'
end
#We also include the Capybara gem, which allows us to simulate a user’s interaction with the sample application using a natural English-like syntax.1

group :production do
  gem 'pg', '0.12.2'
end
#include the PostgreSQL gem in production for deployment to Heroku:
