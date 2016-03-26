require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    @user = "Ian"
    erb :index #@user will be defined as "Ian" in the view
  end

  get "/profile" do
    erb :profile # @user will be nil here
  end
  
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    string = params["string"]
    @reversed = string.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ["Charlie Chaplin", "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfeld"]
    erb :friends
  end

end