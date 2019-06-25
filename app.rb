require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params[:string]
    @reversed_string = original_string.reverse
    # puts reversed_string (before changing it to an instance variable)
    print self.class.ancestors
    #erb :reversed
  end

  get '/friends' do
    # Write your code here!

  end
end