require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
  @friends = ["Annie", "Susie","Andrew","Bob","Wendell","Charlie Chaplin","Hobbit","Lola","Eric","Morgan","Brandon","Kari"]
  erb :friends #write your code here
  end

end
