require 'nokogiri'
require 'open-uri'

class Luke

  def initialize
    lh_html = open('https://twitter.com/Luke5SOS')
    doc = Nokogiri::HTML(open(lh_html))

    @tweet_text = doc.css(".ProfileTweet-text").first.children.text
    epoch_time = doc.css(".js-short-timestamp")[1].attributes["data-time"].value
    @time = Time.at(epoch_time.to_i)
  end

  def tweet
    @tweet_text
  end

  def time
    @time
  end

end



