require 'erb'
require 'sinatra'
require 'twitter'
set :bind, '0.0.0.0' # Only needed if you're running from Codio

include ERB::Util

get '/' do
  @submitted = false
  erb :form
end

post '/form_handler' do
  @submitted = true
  @firstname = params[:firstname]
  erb :form
end