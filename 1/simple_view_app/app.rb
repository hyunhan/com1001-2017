require 'sinatra'
set :bind, '0.0.0.0' # Only needed if you're running from Codio

get '/philmcminn' do
  @name = 'Phil McMinn'
  @twitter = 'philmcminn'
  @image = 'phil.jpg'
  @interests = ["Everton Football Club",
                "Doctor Who",
                "Researching Automated Software Testing",
                "Publishing research papers",
                "Family"]
  return erb :profile
end

get '/timbernerslee' do
  @name = 'Tim Berners-Lee'
  @twitter = 'timberners_lee'
  @image = 'tim.jpg'
  @interests = ["Inventing the WWW",
                "Web Standards",
                "Open data"]
  return erb :profile
end