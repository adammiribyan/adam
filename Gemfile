source 'http://rubygems.org'

gem 'rails', '3.1.0.rc5'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'mysql2'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "~> 3.1.0.rc"
  gem 'coffee-rails', "~> 3.1.0.rc"
  gem 'uglifier'
end

# Simple form for quick forms
gem 'simple_form'

# Russian support
gem 'russian'

# jQuery
gem 'jquery-rails'

group :development do
  # Deploy with Capistrano
  gem 'capistrano'
  # Guard for magic
  gem 'guard-livereload'
end

group :test do
  # Time and Date magic
  gem 'timecop'
  # Shoulda
  gem 'shoulda'
  # Moching
  gem 'mocha'
  # Factories
  gem 'factory_girl_rails', git: 'git://github.com/thoughtbot/factory_girl_rails.git'
  # Autotest with notification and coloring
  gem 'autotest'
  gem 'autotest-rails-pure'
  gem 'autotest-growl'
  # Pretty printed test output
  gem 'turn', :require => false
end

group :production do
  gem 'mustang'
end