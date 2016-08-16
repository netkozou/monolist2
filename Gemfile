source 'https://rubygems.org'

gem 'rails', '4.2.5'
gem 'sqlite3', group: :development
gem 'pg', group: :production
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'bcrypt', '~> 3.1.7'
gem 'dotenv-rails', :groups => [:development, :test]
gem 'bootstrap-sass'

# http://webservice.rakuten.co.jp/sdk/ruby.html
# https://github.com/rakuten-ws/rws-ruby-sdk
gem 'rakuten_web_service'
gem 'rails_admin'

# Use Unicorn as the app server
# gem 'unicorn'
group :production do
  gem 'puma'
  gem 'rails_12factor'
  gem 'pg'
end

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'pry-rails'
  #追記DB中身GUI
  
end

