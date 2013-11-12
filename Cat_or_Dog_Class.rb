#Today we're building a Class object.  The object is a data structure that we can assign traits to.    

class Pet
	#When an Object is created, we can set up a initialize method to set it up traits we'd like to give it.  
	def initialize
		#Instance Variables: All instances of an object have their own copies of instance variables, even if the value is the same between objects. One object instance can change values of its instance variables without affecting all other instances. 
		#Instance Variables are indicated by a @ at the start of the name.  
		@animal = "New pet from the box of animals."

		#Optional: Call a method.  Here we call a method to set if the animal is a Cat or Dog.
		cat_or_dog
	end

	def cat_or_dog
	# Instance Variables begin with @variable_name
	# These save their values so they can be called on again.
		puts "Would you like a cat or dog?"
		choice = gets.chomp.downcase
		puts choice 
		case choice
			when "cat" then @animal = "Cat"
			when "dog" then	@animal = "Dog"
			else
				puts "Sorry, I didn't understand you."
				cat_or_dog
		end
	end

	# Class methods can be called on objects.  This example in particular returns the value of @animal and is called by adding .type to the end of the Pet object.
	def type
		 @animal
	end

end


# Now that we found a new friend, lets fill out the Adoption Form!  

class AdoptionForm

	def initialize(owner_name, pet_name, pet_type, home)

			@owner_name = owner_name
			@pet_name = pet_name
			@pet_type = pet_type 
			@home = home
		
	end

	def pets_name
		 @pet_name
	end

	#to_s Defines how the variables in the object are returned as a string.  We can use a Class Object to modify defaults for that object type.
	def to_s

		return  "Owner Name: #{@owner_name} \nPet Type: #{@pet_type} \nPet Name: #{@pet_name} \nHome: #{@home}" 

	end



end

	#This method requests the values from the user we'll use to fill out the adoption form.
	def adopt(your_new_pet)
		puts "Would you like to adopt this #{your_new_pet.type}? Yes or No?"
		answer = gets.chomp.downcase
		case answer 
			when "yes" 
				puts "What's your name?"
					you_name = gets.chomp
				puts "What will you call your pet #{your_new_pet.type}?"
					your_pets_name = gets.chomp
				puts "What is your town or city?"
					your_home = gets.chomp
					file = AdoptionForm.new(you_name, your_pets_name, your_new_pet.type, your_home)
					$record_keeper << file	
				puts "Thank you for giving #{file.pets_name} a good home."
				another_pet
			when "no" then puts "Thank you for coming by." 
			else
				puts "I didn't understand you."
				adopt(your_new_pet)
		end
	end


	# This asks the user if he or she would like to start this process over again.
	def another_pet
		puts "Would you like to see another pet?"
		answer = gets.chomp.downcase
		case answer 
			when "yes" then adopt(Pet.new)
			when "no"
				puts "Here is a copy of your adoption records."
				puts $record_keeper
			else
				puts "Pardon?"
				another_pet
		end
	end


#gloabl array variable to hold the shelter's adoption records 
$record_keeper = Array.new


#This function will prompt the user to adopt a pet.  We will use a new Pet Object, built from Pet Class. 
adopt(Pet.new)








