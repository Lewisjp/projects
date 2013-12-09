require 'sinatra/base'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base
    get '/' do
	    erb :artists
    end

	get '/artists' do
	    erb :artists
	end


	get '/hello-world' do
	    erb :hello
	end

  end
end