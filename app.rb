require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params['string']
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ["Friend1", "Friend2", "Friend3", "Charlie Chaplin"]
    erb :friends
    #write your code here
  end

end
