source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'sqlite3'
# simple user authentication
gem 'sorcery'
# slim language, just playing with it, fairly simple really if you know haml
gem 'slim-rails'
# rails in-app, woha mind blownzor
gem 'sextant'
# sexy messages if wrenching out make sure to remove the require call in
# sprockets manifest
gem "message_block"

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  # for rails panel (chrome extension)
  gem 'meta_request'
end

group :test, :development do
	gem 'rspec-rails'
	gem 'fabrication'
end

group :test do
	gem 'database_cleaner'
	gem 'faker'
	gem 'capybara'
	gem 'launchy'
	gem 'fivemat'
end

group :production do
  gem 'pg'
end

gem 'jquery-rails'
