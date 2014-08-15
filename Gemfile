source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
# Use postgresql as the database for Active Record
gem 'pg'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

group :development do
  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Mutes console log entries for CSS, JavaScript, and other assets.
  # See: https://github.com/evrone/quiet_assets
  gem 'quiet_assets'
end

group :test, :development do
  gem 'pg'

  # Use dotenv with Rails
  # See: https://github.com/bkeepers/dotenv
  gem 'dotenv-rails'

  # RSpec for Rails
  # See: https://github.com/rspec/rspec-rails
  gem 'rspec-rails', '~> 3.0.0'
end

group :test do
  # Useful for generating database entries for testing
  # See: https://github.com/thoughtbot/factory_girl_rails
  gem 'factory_girl_rails', '~> 4.0'

  # Useful for generating dummy data, e.g., fake email addresses
  # See: https://github.com/stympy/faker
  gem 'faker'

  # Useful Rails-specific RSpec matchers
  # See: https://github.com/thoughtbot/shoulda-matchers
  gem 'shoulda-matchers'
end

# Gems we need on Heroku but not locally
group :production do
  gem 'thin'
  gem 'pg'
  gem 'rails_12factor'
end
