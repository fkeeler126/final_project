require 'rubygems'
require 'twilio-ruby'
require_relative "scrape.rb"

class Message
  def initialize(from, to)
    @from = from
    @to = to
    # secs = Time.parse("10:36am") - Time.now
    # sleep secs
  end

  def send_my_message
    hemmings = Luke.new
    account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
    auth_token = '2008ea097713e401a16c54029058da82'
    @client = Twilio::REST::Client.new account_sid, auth_token
    @client.account.messages.create(
      :from => @from,
      :to => @to,
      :body => "Luke Hemmings has tweeted:" + "\n" + hemmings.tweet + "\n" + hemmings.time.to_s
    )
  end
end

    




