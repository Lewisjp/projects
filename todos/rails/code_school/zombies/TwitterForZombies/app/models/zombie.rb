class Zombie < ActiveRecord::Base
	attr_accessible :name, :age, :bio, :email

	scope :rotting, where(rotting: true)
	scope :fresh, where("age < 20")
	scope :recent, order("created_at desc").limit(3)

=begin 
	# The above allows for method chaining in the controller
	Zombie.rotting.limit(5)
	Zombie.recent.rotting
	Zombie.recent.fresh.rotting
=end 

	# run the following before saving a Zombie object
	before_save :making_rotting

	def making_rotting
		if age > 20 # age is a attribute of Zombie
			self.rotting = true # setting variable: self is the Zombie class 
		end
	end


end
