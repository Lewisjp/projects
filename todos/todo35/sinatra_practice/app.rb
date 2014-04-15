require 'sinatra'

	#Think of routes as methods 

	get '/hi' do  #method that determines the location of the sinatra displayed 
		erb: index #return value of the website we're trying to view 
 	end

	get '/fly' do  #method that determines the location of the sinatra displayed 
		"fly fly away!" #return value 
	end

	get '/jeremy' do  #method that determines the location of the sinatra displayed 
		"Jeremy is one cool cat." #return value 
	end
