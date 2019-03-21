require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do   # renders the reverse.erb
    erb :reverse
  end

  post '/reverse' do  # renders the reversed.erb
    original_string = params[:string]  #is equal to params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
   @friends= ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
   erb :friends
  end
end
