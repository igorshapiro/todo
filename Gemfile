source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails'
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  # gem 'turbo-sprockets-rails3'
end

gem "jquery-rails"

gem 'therubyracer', platform: :ruby
gem 'execjs', platform: :ruby

gem 'pg'
gem 'angularjs-rails'
gem 'angular-ui-bootstrap-rails'

gem 'bootstrap-sass'
gem 'figaro'
gem 'uuid'

group :development do
  gem 'better_errors'

  gem 'pry-rescue'
  gem 'pry-stack_explorer'

  gem 'binding_of_caller', :platforms=>[:mri_19, :rbx]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'spring'

  gem 'html2haml'
  gem 'quiet_assets'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'mongoid-rspec'
  gem 'poltergeist'
  gem 'turnip'
end
gem 'pry'
gem "google-code-prettify-rails"

gem 'rails_12factor', group: :production
