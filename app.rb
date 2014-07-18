require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require './lib/sms.rb'
require './lib/scrape.rb'
require 'pry'
require 'rubygems'
require 'twilio-ruby'

get '/' do
  @tweet = Luke.new
  erb :index
end