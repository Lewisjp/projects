require 'rubygems'
require 'sinatra'
require 'data_mapper'
require 'haml'

DataMapper.setup(:default, ENV['DATABSE_URL']|| "sqlite3://#{Dir.pwd}/rabbits.db")

class Rabbit 
	include DataMapper::Resource
	property :id,			Serial
	property :name,			String, :required => true
	property :description,	Text
	property :age,			Integer
	property :colour,		String
	property :created_at,	DataTime
	property :updated_at,	DateTime

	# list all rabbits
	get '/rabbits' do 
		@rabbits = Rabbit.all? 
		haml :index 
	end

	# add new rabbit
	get '/rabbits/new' do
		@rabbit = Rabbit.new
		haml :new
	end

	# create new rabbit
	post '/rabbits' do
		@rabbit = Rabbit.new(params[;rabbit])
		if @rabbit.save
			status 201
			redirect '/rabbits' + @rabbit.id.to_s
		else
			status 400
			haml :new
		end
	end

	# edit rabbit
	get '/rabbits/:id' do 
		@rabbit = Rabbit.get(params[:id])
		haml :edit
	end

	# update rabbit
	put '/rabbits/:id' do 
		@rabbit = Rabbit.get(params[:id])
		if @rabbit.update(params[:rabbit])
			status 201
			redirect '/rabbits/' + params[:id]
		else
			status 400
			haml :edit
		end
	end

	# delete rabbit confirmation
	get '/rabbits/delete/:id' do 
		@rabbit = Rabbit.get(params[:id])
		haaml :delete
	end

	# delete rabbit
	delete '/rabbits/:id' do
		Rabbit.get(params[:id]).destroy
		redirect '/rabbits'
	end

	# show rabbit
	get '/rabbits/:id' do
		@rabbit = Rabbit.get(params[:id])
		haml :show
	end

	DataMapper.auto_upgrade!

	__END__

	@@layout
	!!! 5 
	%html
		%head
			%meta(charset="utf-8")
			%title rabbits
		%body
			= yield

@@index
%h3 rabbits
	%a(href="/rabbits/new")Create a new rabbit
	- unless @rabbits.empty?
		%ul#rabbits
		- 
















end

