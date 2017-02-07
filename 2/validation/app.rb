require 'erb'
require 'sinatra'
require 'twitter'
set :bind, '0.0.0.0' # Only needed if you're running from Codio

include ERB::Util

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

get '/' do
  @submitted = false
  erb :form
end

post '/form_handler' do
  @submitted = true

  @firstname = params[:firstname].strip
  @surname = params[:surname].strip
  @email_address = params[:email_address].strip

  @firstname_ok =
    !@firstname.nil? && @firstname != ""
  @surname_ok = !
    @surname.nil? && @surname != ""
  @email_address_ok =
    !@email_address.nil? && @email_address =~ VALID_EMAIL_REGEX

  @all_ok = @firstname_ok && @surname_ok && @email_address_ok

  erb :form
end