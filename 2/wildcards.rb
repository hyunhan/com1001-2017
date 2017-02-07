require 'sinatra'
set :bind, '0.0.0.0' # Only needed if you're running from Codio

get '/date/*-*-*' do
  y = params[:splat][0]
  m = params[:splat][1]
  d = params[:splat][2]
  "The date requested is #{y}-#{m}-#{d}"
end