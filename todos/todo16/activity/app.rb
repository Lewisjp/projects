require 'sinatra/base'

# Assignment

# Create a new view called artists.erb
# Create a route that will render artists.erb when a user visits \artists
# Hardcode some artists and put them in an instance variable
# Print out the artists in you artists.erb view

module StudentSite
  class App < Sinatra::Base
    get '/' do
	    erb :artists
    end

	get '/artists' do
	    erb :artists
	end

  end
end