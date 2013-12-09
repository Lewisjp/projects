require 'sinatra/base'
require './lib/compliment.rb'

module EmergencyCompliment
  class App < Sinatra::Base
    get '/' do
    	@random = Compliment.new 
	    erb :compliment
    end

	get '/compliments' do
	   	@random = Compliment.new
	    erb :compliment
	end

  end
end