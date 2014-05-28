source 'http://rubygems.org'

ruby '1.9.3'
gem 'rails', '3.1.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'haml'
gem 'sass'
gem 'heroku'
# Use unicorn as the web server
# gem 'unicorn'

group :production do
	gem 'therubyracer-heroku'
	gem 'pg'
end

group :development, :test do
	gem 'ruby-debug19', :require => 'ruby-debug'
	gem 'pg'
	gem 'thin'
end

group :test do
	gem 'autotest'	
	gem 'autotest-growl'
	gem 'rcov' 
	gem 'httparty'	
	gem 'rspec', '>= 2.6'
	gem 'rspec-rails', '>= 2.6'
	gem 'factory_girl', :git => 'git://github.com/thoughtbot/factory_girl.git', :tag => 'v2.1.2'
	gem 'factory_girl_rails', :git => 'git://github.com/thoughtbot/factory_girl_rails.git', :tag => 'v1.2.0'
end
