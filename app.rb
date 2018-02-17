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
    @friends = ["Joe Rietow", "Brian Mills", "Justin Stumpf", "TJ Ackerman", "Khal Drogo", 'Malala Yousafzai']

    erb :friends
  end
end
