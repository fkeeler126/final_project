require 'nokogiri'
require 'open-uri'
require_relative "lib/sms.rb"
require_relative "lib/scrape.rb"

task :new_tweet do 
  new_tweet = Luke.new

  if new_tweet.time > Time.now-10*60
    message = Message.new("+18152642023", "+19176741743")
    message.send_my_message
  else
    puts "No new tweets."
  end
end
