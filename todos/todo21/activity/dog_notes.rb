require 'mysql2'
require 'debugger'

# Stare into the Ruby, and all you see are objects.  Lets make our Ruby SQL dogs more definitive.

class Dog

# We are going to want our dog information globaly accessble.  Our database defines dogs by their id, name, and color. 

	attr_accessor :id, :name, :color


# We are going to create a global variable to reference our SQL connection
  @@client = Mysql2::Client.new(:host => "localhost", :username => "root", :database => "dogs")


# for our client to server connection to be accessible throughout the class, lets define methods for our database our other methods could use.

	def self.db
		@@client
	end

	def db 
		@@client
	end


# Our SQL database is currently auto-incrementing our dog_ids.  This class will be concerned with establishing the dogs Name and Color.
	def initialize(name = "Bob Barker", color = "blue")
		@name = name 
		@color = color 
	end

# Lets search for a dog many ways.  Below are a few,

	# Find all dogs
	def find_all
		results = db.query("
			SELECT *
			FROM dogs
	    ")
	    print(results)
	end

	# Find dog by ID 
	def find(dog_id)
		results = db.query("
			SELECT *
			FROM dogs
			WHERE dog_id=#{dog_id}
	    ")
	end

	# Find dog by name
	def find_by_name(d_name)
		results = db.query("
			SELECT *
			FROM dogs
			WHERE dog_name=#{d_name}
	    ")
	end

# In SQL, Database tables consist of columns, commonly called fields. Fields represent attributes of the object described by the table.

	def find_by_attr(field_1, field_2)
		results = db.query("
			SELECT *
			FROM dogs
			WHERE #{field_1}=#{field_2}
	    ")
	end

# We have been pulling information from our DB.  Now its our turn to INSERT something into the DB.

	def insert(d_name, d_color)
		db.query("
			INSERT INTO dogs(color, dog_name) VALUES('#{d_color}', '#{d_name}')
		")
	end 

# Sometimes a dog has a great day and is adopted.  We then need to update a dog id to represent another dog in our Shelter.  Other times we only have to update the dog's name or fur color.    

	def update(d_id, d_name, d_color)
		update_name(d_id, d_name)
		update_color(d_id, d_color)
	end

	def update_name(d_id, d_name)
		db.query("
			UPDATE dogs
			SET dog_name='#{d_name}'
			WHERE dog_id=#{d_id}
		")
	end

	def update_color(d_id, d_color)
		db.query("
			UPDATE dogs
			SET color='#{d_color}'
			WHERE dog_id=#{d_id}
		")			
	end

# There are a lot of ways to manage information.  The new manager of our dog shelter for example, would like us to stop reusing dog ids.  We will now be deleting the dog id when the dog gets adopted.

	def delete(d_id)
	db.query("
		DELETE FROM dogs
		WHERE dog_id=#{d_id}
	")
	end

# Regular medical exams are needed at the shelter.  We can create a method to inspect out Dog.

	def inspect
		sayings = [
			"Hello, I'm a dog named #{name}",
			"#{name} has a strong #{color} coat",
			"Yes, I am a dog."
		]
		puts sayings[rand(3)]
	end

# We can use this class to create multiple dogs.  When you go to adopt a dog you're looking for that special one.  To make sure we don't mix up our dogs, we're going to create a comparison method that checks for the dog's id.  Otherwise, the comparison would deault to checking the class.  
	def ==(compare_dogs)
		self.id == compare_dogs.id
	end


# We can send the results to a print method to see the elements.

	def print(results)
		puts results.each
	end

#Given in the assignment 
	def mark_saved!
	  self.id = self.db.last_id if self.db.last_id > 0
	end


end 

test = Dog.new
test.inspect



# !!! Strange error
# test = Dog.new.insert("Marv", "green")
# test.find_all
# #=>
# 	dog_notes.rb:103:in `<main>': undefined method `find_all' for nil:NilClass (NoMethodError)
#
#   test = Dog.new 
#   test.find_all
#
# 	When you then do just the test.find_all everything prints, including the new inserted item



 
  # refactorings?
  # new_from_db?
  # saved?
  # save! (a smart method that knows the right thing to do)
  # unsaved?

  # reload