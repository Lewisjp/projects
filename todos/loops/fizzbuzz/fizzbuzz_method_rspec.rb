require './fizzbuzz_method'

describe "#fizzbuzz" do

	it "should return fizzbuzz when the number % 15 = 0" do
		expect(fizzbuzz(15)).to eq("fizzbuzz")
	end

	it "should return fizzbuzz when the number % 5 = 0" do
		expect(fizzbuzz(5)).to eq("buzz")
	end

	it "should return fizzbuzz when the number % 3 = 0" do
		expect(fizzbuzz(3)).to eq("fizz")
	end

	it "should return int if it can be % by 15 , 5 or 3 to 0" do 
		fizzbuzz(2).should eq(2)
	end

end
