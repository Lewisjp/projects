require './todo8'


describe Deli, "#initialize" do 

	it "initialized Deli returns array" do
		expect(Deli.new).to be_a(Deli)
    end

end


describe Deli, "#take_a_number" do 

	it "should return an array with a nubered list, after taking a name" do
    	expect(Deli.new.take_a_number("Tony")).to eql(["1. Tony"])
    end

end

# describe Deli, "#now_serving" do

# 	it "should returns the current person served" do
#     	expect(Deli.new.now_serving).to eql(["1. Tony"])
#     end

end

