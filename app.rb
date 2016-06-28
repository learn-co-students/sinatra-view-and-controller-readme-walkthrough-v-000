require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    @orig = params["string"]
    @reversed = @orig.reverse
    erb :reversed
  end

  get '/friends' do
    #write your code here
    @friends = ["Charlie Chaplin", "Richard Pryor", 
      "Eddie Murphy", "Louis CK", "Jerry Seinfeld"]
  end

end