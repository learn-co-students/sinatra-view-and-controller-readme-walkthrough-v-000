require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    # i used line 10 in reversed which can get the job done alone, without line 11 and 12
    # <%= params[:string].reverse %>
    original_string = params["string"]
    @reversed_string = original_string.reverse
    
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    
    erb :friends
  end
  
end