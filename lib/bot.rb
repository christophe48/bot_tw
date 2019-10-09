# ligne très importante qui appelle la gem.
require 'twitter'

require 'dotenv'# n'oublie pas les lignes pour Dotenv ici…
Dotenv.load('.env')

# quelques lignes qui appellent les clés d'API de ton fichier .env
client = Twitter::REST::Client.new do |config|
 config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
 config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
 config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
 config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

describe "the login_twitter method" do
  it "should return client, and client is not nil" do
    expect(login_twitter).not_to be_nil
  end
end


# ligne qui permet de tweeter sur ton compte
client.update('Bonjour, ceci est mon premier tweet en Ruby !!!!')
