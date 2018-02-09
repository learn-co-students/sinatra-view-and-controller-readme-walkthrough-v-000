require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
  	@reversed_string = params["string"].reverse # this data is in controller, need to pass to a view so user can see it
  	#Instance variables allow us to bypass scope between the various methods in a class.
  	#Creating an instance variable in a controller method (route) lets the contents become 'visible' to the erb file to which it renders.
    #Instance variables are only passed from controller method where they are created to view that is rendered.
    #Instance variables cannot be passed between controller methods
    erb :reversed
  end

  get '/friends' do
  	@friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end

end