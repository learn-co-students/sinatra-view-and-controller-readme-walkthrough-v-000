require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    #puts params
    original_string = params["string"]
    #Instance variables allow us to bypass scope between the various methods in a class.
    #Creating an instance variable in a controller method (route) lets the contents become 'visible' to the erb file to which it renders.
    @reversed_string = original_string.reverse

    erb :reversed
  end

  get '/' do
    @user = "Ian"

    erb :index # @user will be defined as 'Ian' in the view
  end

  get "/profile" do
    erb "profile" # @user will be nil here
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison','Harriet Tubman','Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end
