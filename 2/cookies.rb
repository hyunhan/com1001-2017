require 'sinatra'
set :bind, '0.0.0.0' # Only needed if you're running from Codio

get '/' do
  response.set_cookie('foo', 'bar')
  'Cookie set. Would you like to <a href="/read">read it?</a>'
end

get '/read' do
  "Cookie has a value of: #{request.cookies['foo']}."
end

get '/delete' do
  response.delete_cookie 'foo'
  'Cookie has been deleted.'
end