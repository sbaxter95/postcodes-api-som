require 'sinatra'
require_relative 'lib/postcode_services.rb'

get '/' do
  erb :single
end
