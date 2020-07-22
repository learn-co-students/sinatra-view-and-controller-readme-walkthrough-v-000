require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params[:string]
    @reversed_string = original_string.reverse #by making it an instance variable, it becomes visible to the corresponding erb file.
                                               #not accessible to other controller methods

    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc',
  'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end
