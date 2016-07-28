require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    forward = params["string"]
    @reversed = forward.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ["Charlie Chaplin", "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfeld"]
    erb :friends
  end

end
