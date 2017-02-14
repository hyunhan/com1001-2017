require 'erb'
require 'sinatra'
require 'sqlite3'

set :bind, '0.0.0.0' # Only needed if you're running from Codio

include ERB::Util

before do
  @db = SQLite3::Database.new './cities.sqlite'
end

get '/search' do
  unless params[:search].nil?
    query = %{SELECT city, country, population
              FROM cities
              WHERE city LIKE '%#{params[:search]}%'}
    @results = @db.execute query
  end

  erb :search
end