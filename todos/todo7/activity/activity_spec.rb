require './activity'


describe Array, "#my_collect" do

	it "should return an array that has boolean values." do
	expect(["rock", "paper", "scissors"].my_collect { |hand| hand == "paper" }).to eql([false, true, false])
	end
end



describe Array, "#my_select" do

	it "should return an array with all the items that equal our desired object." do
	expect([ "monster", "monster", "red bull", "monster", "red bull"].my_select { |drink| drink == "monster"}.to eql(["monster", "monster","monster"])
	end
end
=begin
CHALLENGE:
Implement these methods as instance methods on the array class.
=end


