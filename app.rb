require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    @reversed = params[:string].reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Jeanne d\'Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end
