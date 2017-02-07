require 'sinatra'
set :bind, '0.0.0.0' # Only needed if you're running from Codio

require_relative 'front_end'
require_relative 'back_end'
require_relative 'error_handling'