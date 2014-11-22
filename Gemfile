source 'https://rubygems.org'

gem 'rails', '4.1.4'
gem 'pg'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem "twitter-bootstrap-rails"

group :development do
  gem 'spring'
  gem 'quiet_assets'
end

group :test, :development do
  gem 'dotenv-rails'
  gem 'rspec-rails', '~> 3.0.0'
end

group :test do
  gem 'factory_girl_rails', '~> 4.0'
  gem 'faker'
  gem 'shoulda-matchers'
end

group :production do
  gem 'thin'
  gem 'rails_12factor'
end
