require_relative 'config/environment'

class App < Sinatra::Base
  # RENDERS the reverse.erb page in the first place
  get '/reverse' do
    erb :reverse
  end

  # RECEIVES the params Hash from the form, and sends that Hash data to reversed.erb.
  # RENDERS reversed.erb
  post '/reverse' do
    # puts params[:string].reverse
    original_string = params[:string]
    @reversed_string = original_string.reverse
    puts @reversed_string

    erb :reversed
  end


  # RENDERS friends.erb in the first place
  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end
