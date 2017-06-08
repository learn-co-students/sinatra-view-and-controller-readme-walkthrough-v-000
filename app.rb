require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    @reversed_str = params[:string].reverse
    erb :reverse
  end

  post '/reverse' do
    @reversed_str = params[:string].reverse
    erb :reversed
  end

  get '/friends' do
    #write your code here
    @friends = ["Charlie Chaplin", "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfeld"]
    erb :friends
  end

end
