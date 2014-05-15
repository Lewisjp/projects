class Assignment < ActiveRecord::Base
	attr_accessible :zombie_id, :role_id

	belongs_to :zombie
	belongs_to :role

end
