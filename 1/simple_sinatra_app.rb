require 'sinatra'
set :bind, '0.0.0.0' # Only needed if you're running from Codio

get '/' do
  return 'Hello, World'
end

get '/anotherpage' do
  puts 'This goes to the console'
  puts 'Not the web page'
  return 'Not much to see here.'
end