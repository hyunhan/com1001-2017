require 'sinatra'

enable :sessions
set :session_secret, 'super secret'

get '/' do
  redirect '/login' unless session[:logged_in]
  erb :index
end

get '/login' do
  erb :login
end

post '/login' do
  if params[:password] == 'secret'
    session[:logged_in] = true
    session[:login_time] = Time.now
    redirect '/'
  end
  @error = "Password incorrect"
  erb :login
end

get '/logout' do
  session.clear
  erb :logout
end
