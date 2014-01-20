require './todos40.rb'

describe "separate_with_comma" do 

	it "should add a comma every -4x places" do
		expect(1).should eq("1")
	end

	it "should add a comma every -4x places" do
		expect(1000).should eq("1,000")
	end

	it "should add a comma every -4x places" do
		expect(10000).should eq("10,000")
	end

end