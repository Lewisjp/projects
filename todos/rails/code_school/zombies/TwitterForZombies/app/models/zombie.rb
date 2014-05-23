class Zombie < ActiveRecord::Base
	after_save :decomp_change_notification, if: :decomp_changed?
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


	# relationship is linked so if zombie is destoryed so is the brain 
	has_one :brain, dependent: :destroy 

	has_many :assignments
	has_many :roles, through: :assignments


	# run the following before saving a Zombie object
	before_save :making_rotting

	def making_rotting
		if age > 20 # age is a attribute of Zombie
			self.rotting = true # setting variable: self is the Zombie class 
		end
	end

	private

	def decomp_change_notification
		ZombieMailer.decomp_change(self).deliver
	end


end
