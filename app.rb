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
    @friends = ['Papa Smurf', 'Captain Marvel', 'Wonder Woman', 'Superman', 'Micky Mouse', 'Malala Yousafzai']
    erb :friends
  end
end
