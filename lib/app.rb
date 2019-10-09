require 'twitter'

require 'dotenv'# Appelle la gem Dotenv

Dotenv.load('.env')

def login_twitter
client = Twitter::REST::Client.new do |config|
   config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
   config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
   config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
   config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
 end
 return client
 client.update('Hello le monde !!!!')
end

login_twitter