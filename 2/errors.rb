require 'sinatra'
set :bind, '0.0.0.0' # Only needed if you're running from Codio

not_found do
  'Custom 404 error page'
end

get '/div_by_zero' do
  0 / 0
end

error do
  'Y U NO WORK?'
end