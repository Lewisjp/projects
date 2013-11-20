require './listmaker'


describe "#make_list" do 

	it "returns array" do
		expect(make_list(["gold", "silver", "copper"])).to be_a(Array)
    end

    it "should return a numbered array" do
    	expect(make_list(["gold", "silver", "copper"])).to eql(["1. gold", "2. silver", "3. copper"])
    end

=begin
	it "does not return a numeric " do
		expect(make_list(["gold", "silver", "copper"]).to_not be_a_kind_of(Numeric)
    end
=end

end


# Create a test for a method`make_list` that takes an array and returns that same array but
# as an array of strings in a numbered list.

# Run this test by typing `rspec list_maker_spec.rb` in your terminal.

# Then, create a method on array called `make_list` that iterates over the array it is
# called on and appends a number, a period, and a space to each element.

# e.g make_list(["ich", "ni", "san"]) #=> ["1. ich", "2. ni", "3. san"]

