require 'erb'
require 'sinatra'
require 'twitter'
set :bind, '0.0.0.0' # Only needed if you're running from Codio

include ERB::Util

# NOTE: you will need to fill these values in with your own account
# details. This is covered in the Twitter practical lab class.
before do
  config = {
      :consumer_key => '...',
      :consumer_secret => '...',
      :access_token => '...',
      :access_token_secret => '...'
  }
  @client = Twitter::REST::Client.new(config)
end

get '/twitter_search' do
  unless params[:search].nil?
    search_string = params[:search]
    results = @client.search(search_string)
    @tweets = results.take(20)
  end
  erb :twitter_search
end