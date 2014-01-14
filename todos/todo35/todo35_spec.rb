require './todo35.rb'

describe Array, "#my_transpose"  do

	it "should return an empty array" do
		expect([].transpose).should eq([])
	end

	it "should combine the numbers of the two arrays based on placement" do
		expect([[1,2], [3,4], [5,6]].transpose).should eq([[1, 3, 5], [2, 4, 6]])
	end

	it "should combine numbers and symbols based on placement as a new array" do
		expect([[1, 2, 3], [:a, :b, :c]].my_transpose).should eq([[1, :a], [2, :b], [3, :c]])
	end

end