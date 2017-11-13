require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    #puts params
    original_string = params["string"] #local variable
    @reversed_string = original_string.reverse #instance variable

    erb :reversed
  end

  get '/friends' do
    # Write your code here! This one uses an array.
    @friends = ['Emily Wilding Davison', 'wiggles', 'Leo', 'Astrid', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end

end
