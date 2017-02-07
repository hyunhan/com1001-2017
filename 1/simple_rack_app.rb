require 'rack'
require 'rack/server'

# Note: this doesn't seem to work out of the box with WEBrick.
# You'll need to use the "Thin" web server instead instead,
# by installing the "thin" gem, i.e. "gem install thin".
# (You may need to prefix the above command with "sudo".)

class HelloWorldApp
  def self.call(env)
    [200, {}, 'Hello World']
  end
end

Rack::Server.start :app => HelloWorldApp
