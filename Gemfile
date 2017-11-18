source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# #1
group :production do
    #use pg as the production database for Active Record
    gem 'pg'
    gem 'rails_12factor'
end

# #2
group :development do
    # Use sqlite3 as the development for ACtive Record
    gem 'sqlite3'
end

# use puma as the app server
gem 'puma', '~> 3.0'
#use scss for stylesheets
gem 'sass-rails', '~> 5.0'
# use uglifier as compressor for javascript assets
gem 'uglifier', '>= 1.3.0'

#use jquery as the javascript library
gem 'jquery-rails'
#turbolinks makes navigating your web application faster. read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# build JSON APIs with ease. read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

gem 'thor', '0.20.0'

group :development do
    gem 'listen', '~> 3.0.5'
end

group :development, :test do
    gem 'rspec-rails','~> 3.0'
    gem 'rails-controller-testing'
end
