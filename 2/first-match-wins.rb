require 'sinatra'
set :bind, '0.0.0.0' # Only needed if you're running from Codio

get '/*' do
  'NOM NOM NOM'
end

get '/specific' do
  "You'll never, ever see me."
end