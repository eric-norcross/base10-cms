source 'https://rubygems.org'

# Platform
ruby '2.1.2'
gem 'rails', '3.2.19'

# View Tools
gem 'jquery-rails'
gem 'haml-rails'
gem 'font-awesome-rails'

# SEO Tools
gem "friendly_id", "~> 4.0.10" # v4 For Rails 3x

# DB Tools
gem 'pg'
gem 'seed_dump'
gem 'annotate', '>=2.5.0'

# Image/File Serving & Uploading
gem 'ckeditor', '4.0.2'
gem 'carrierwave'
gem 'mini_magick'
gem 'cloudinary'

# Authorization & Authentication
gem 'cancan'
gem 'devise'

# Monitoring & Logging
# gem 'newrelic_rpm'
# gem 'lograge'

# Hosting, Serving & Deployment
gem 'unicorn'
# gem 'capistrano'
gem 'rack-rewrite' # Redirecting naked domains to "www"


# Fixes for stuff
gem 'rails_12factor' # To silence Heroku deprecation warning
gem 'sass', '3.2.14' # To fix "Warning. Error encountered while saving cache /tmp/..." 
gem 'i18n', '0.6.9' # Something was specifying 0.6.10 but that was pulled
   

# Gems used only for assets and not required in production environments by default.
# Gems used only for assets and not required in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'turbo-sprockets-rails3'
end

group :development do 
  gem 'awesome_print', :require => 'ap'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
end

group :development, :test do
  gem "rspec-rails"
  gem 'factory_girl_rails', "~> 4.0"
end

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
