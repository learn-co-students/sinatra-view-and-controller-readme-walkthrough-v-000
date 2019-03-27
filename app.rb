require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do #renders the reverse.erb page
    erb :reverse
  end

  post '/reverse' do #receives params hash from the form (but does nothing with it) and renders the reversed.erb page
    original_string = params["string"]
    @reversed_string = original_string.reverse #creating an instance variable in controller method (route) lets the contents become visible to the erb file to which it renders
    erb :reversed
    #@reversed_string can now be accessed/viewed within reversed.erb; CANNOT be passed between other routes/controller methods
  end

  get '/friends' do #renders the friends.erb page
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end
