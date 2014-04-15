require 'sequel'

=begin

!! be sure to change the examples
Yesterday was an introduction to SQL and Ruby.  

Today is an introduction with Sequel.  

Sequel != SQL

Sequel is another database toolkit for Ruby.  


The basics:
In your terminal install sequel
gem install sequel

In the directory you're building your sequel based project we're going to use a bundler to manage the magic behind the curtain.

Create a Gemfile
	# Gemfile
	source 'https://rubygems.org'

	gem 'sequel'

Now that your Gemfile is set up, lets run bundle install in your termal window.  Be sure to be in the location of your project.

You're probably wondering whats unique about Sequel.  Let's jump into it.
=end 

# connecting to a database:

DB = Sequel.connect('sqlite://blog.db')

# To Create a table:

Sequel.migration do 
	change do
		create_table(:heros) do
			primary_key :introduction
			String :name
		end
	end
end

# Sequel has a built-in O/RM utilities that allow for the Model class.  This is managed through Class Inheritance. 

# To add Sequel model methids to classes:

class Hero < Sequel::Model
end


# The student class now has Sequel methods enabled.  

# To get a list of all columns in the table:

Hero.columns
#=> [:id, :name]

# To add a variable, in SQL we'd write "INSERT INTO hero(name) VALUES('The Maxx')

# To add a variable with Sequel:

Student.create(name: 'The Maxx')

# To call a Hero from the database by id
Hero[1]

=begin
We can also find a Hero by name or attribute.  
In SQL we'd write: SELECT * FROM hero WHERE (name = 'The Maxx') LIMIT 1
In Sequel we have options.
Option 1:
=end
Hero.find(name: 'The Maxx')
#Option 2:
Hero[name: 'The Maxx']

#Perhaps you want to know more about the instance you retrieved, or even change it.

anti_hero = Hero.find(name: 'The Maxx')
anti_hero.name
#=> 'The Maxx'

#Lets change the name.

anti_hero.name = 'Spawn'
anti_hero.name
#=> 'Spawn'

#If we want to get this information later, we're going to need to save it.

anti_hero.save

=begin
Our Hero class doesn't have any models for name.  It doesn't even have an attr_acessor method to manage variabels.  Here is where O/RM is bringing everythign together.  

Sequel will build a table named 'hero' named after our 'Hero' class.

What makes Sequel awesome?
Good question.  Lets discuss Migrations.

!!!! pause 


-------------------------
o1 up and down is just an example 

for the obj. just have 

create artists 
method called change 
add the 01 its important 


#Migrations objs

#Just have change.  not up down and everythign else.  



sequel -m migrations sqlite://artists.db

Its suppose to be ran in the root folder 

when ran in the migrations folder

Error: Errno::ENOENT: No such file or directory - migrations/Users/Flatiron/.rvm/gems/ruby-2.0.0-p247/gems/sequel-4.5.0/lib/sequel/extensions/migration.rb:398:in `initialize'


=end



=begin

References:
http://sequel.jeremyevans.net/

https://gist.github.com/ashleygwilliams/fdb8340c8e6ce421975b

!!! Review for later

https://gist.github.com/ashleygwilliams/fdb8340c8e6ce421975b


!!! rubyforge is down
http://sequel.rubyforge.org/rdoc/files/doc/schema_modification_rdoc.html
=end