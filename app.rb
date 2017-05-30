require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    # original_string = params[:string]
    # reversed_string = original_string.reverse
    @reversed_string = params[:string].reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ['Charlie Chaplin', 'Richard Pryor', 'Eddie Murphey', 'Louis CK', 'Jerry, Seinfeld']
    erb :friends
  end

end
