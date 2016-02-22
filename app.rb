require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    @reversed = params[:string].to_s.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ["Charlie Chaplin", "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfeld"]
    erb :friends
  end

end