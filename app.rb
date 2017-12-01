require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    string = params["string"]
    @reversed_string = string.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ["Jubilee", "Mr. Good", "Cher", "Malala Yousafzai"]
    erb :friends
  end
end
