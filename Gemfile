source 'https://ruby.taobao.org'

# ruby '2.1'

# 基础包
gem 'rails', "4.1.4"
gem 'mysql2', '0.3.20'
# gem 'protected_attributes', '1.0.8'
gem 'yajl-ruby', '1.2.1'
gem 'sinatra', '>= 1.3.0', :require => nil
gem 'uglifier', '2.5.3'
gem 'sass-rails', '4.0.3'
gem 'therubyracer', '0.12.1'
# gem 'rails_admin', '~> 0.7.0'
gem 'ransack'
gem 'wechat', "~> 0.6.8"
gem 'redis-objects'

# 资源模板引擎
gem 'jquery-rails', '3.1.4'
gem 'jquery-ui-rails', '5.0.0'
gem 'bootstrap-sass', '~> 2.3'
gem 'will_paginate-bootstrap', '~> 0.2.5'
gem 'lazy_high_charts', '1.5.4'

# 异步和定时任务
gem 'sidekiq', '3.2.2'
gem 'whenever', '0.9.2'

# API
gem 'grape'
gem 'grape-entity'
gem 'grape-swagger'
gem 'grape-swagger-rails'
gem 'rack-ssl-enforcer'
gem 'kramdown'
gem 'jbuilder'
gem 'hashie-forbidden_attributes'

# HTML解析
gem 'typhoeus', '0.6.9'
gem 'nokogiri', '1.6.8'
gem 'useragents'

# 辅助工具
gem 'devise', '3.2.4'
gem 'quiet_assets', '1.0.3'  # 禁用assets log
gem 'will_paginate', '3.0.7'
gem 'default_value_for', "~> 3.0.0"
gem 'friendly_id', '~> 5.0.2'
gem 'settingslogic', '2.0.9'
gem 'similar_text', '0.0.4'
# gem 'newrelic_rpm'
gem 'oneapm_rpm'
gem 'annotate'

group :development, :worker do
  gem 'pry', '0.10.1'
  gem "better_errors", '2.0.0'
  gem "binding_of_caller", '0.7.2'
end

group :development, :test do
  gem "rspec-rails", "~> 2.14.0"
  gem "factory_girl_rails", "~> 4.2.1"
end

group :test do
  gem "faker", "~> 1.1.2"
  gem "capybara", "~> 2.1.0"
  gem "database_cleaner", "~> 1.0.1"
  gem "launchy", "~> 2.3.0"
  gem "selenium-webdriver", "~> 2.35.1"
end

group :production do
  gem 'unicorn', '4.8.3'
end
