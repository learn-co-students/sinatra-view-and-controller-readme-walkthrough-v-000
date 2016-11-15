require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "yo we oughta have a mothaphaquin' index, dogg, just sayin'"
  end

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    orig_str = params["string"]
    @reversed_string = orig_str.reverse
    erb :reversed
  end

  get '/friends' do
    #write your code here
    @friends = ["Charlie Chaplin", "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfeld"]
    erb :friends
  end

end
