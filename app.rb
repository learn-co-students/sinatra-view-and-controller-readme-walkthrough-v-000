require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    @word = params[:string]
    @reversed_word = @word.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ["Bob Loblaw", "Charlie Chaplin", "Bill Braski"]
    erb :friends
  end

end