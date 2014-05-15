class BrainController < ApplicationController

	#Below will return false when trying to save, so it will never save

	before_save :taste

	def tast
		return false
	end


end
