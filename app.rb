require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
  binding.pry
  @reversed_string = params[:string].reverse
  @reversed_string
  end

  get '/friends' do
    # Write your code here!

  end
end
