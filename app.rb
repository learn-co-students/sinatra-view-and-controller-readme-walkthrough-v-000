require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    # puts params
    
    original_string = params["string"]
    @reversed_string = original_string.reverse
    
    erb :reversed
    
    # puts reversed_string # (before changing it to an instance variable)
    
    # This was an experiment: Is there a way to output @reversed_string with string interpolation instead of #erb? (Not as far as I can tell yet). 
    # Also, I was trying to understand how controller instance variables and views can be in the same scope (MAJOR rabbit hole!).
    # print self.class.ancestors
    #"<%= @reversed_string %>"
  end

  get '/friends' do
    # Write your code here!

  end
end