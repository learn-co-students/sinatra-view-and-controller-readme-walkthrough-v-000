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
    # Write your code here!
    @friends = ["Charlie Chaplin", "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfeld", 'Malala Yousafzai']
    erb :friends
  end
end