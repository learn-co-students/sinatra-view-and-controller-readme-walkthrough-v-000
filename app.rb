require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
  # original_string = params[:string] <=# You can also do it like this, but this won't pass the silly rspec test for this particular lab.
    @reversed_string = original_string.reverse

    erb :reversed
  end

  get '/friends' do
    # Write your code here!

    @friends = ['Emily', 'Harriet', 'Joan', 'Malala Yousafzai']

    erb :friends
  end
end
