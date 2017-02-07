require 'sinatra'
set :bind, '0.0.0.0' # Only needed if you're running from Codio

['/one', '/two', '/three'].each do |route|
  get route do
    "Triggered #{route} via GET"
  end
end