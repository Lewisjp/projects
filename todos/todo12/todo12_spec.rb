require_relative "todo12"

describe "twitterfy" do
	
	test =  "Hey guys, can two teach me to be cool too? I really want to be the best at everything, and you know what I mean? Tweeting is for four you guys!!!!"

	it "should return a string" do
		twitterfy(test).should be_a(String)
	end

	it "should NOT include two" do
		twitterfy(test).should_not include("two")
	end

	it "after two is changed, string should include 2" do
		twitterfy(test).should include("2")
	end

	it "should NOT include to" do
		twitterfy(test).should_not include("to")
	end

	it "after to is changed, string should include 2" do
		twitterfy(test).should include("2")
	end

	it "should NOT include too" do
		twitterfy(test).should_not include("too")
	end

	it "after too is changed, string should include 2" do
		twitterfy(test).should include("2")
	end

	it "should NOT include for" do
		twitterfy(test).should_not include("for")
	end

	it "after for is changed, string should include 4" do
		twitterfy(test).should include("4")
	end

	it "should NOT include four" do
		twitterfy(test).should_not include("four")
	end

	it "after four is changed, string should include 4" do
		twitterfy(test).should include("4")
	end

	it "should NOT include be" do
		twitterfy(test).should_not include("be")
	end

	it "after be is changed, string should include b" do
		twitterfy(test).should include(" b ")
	end

	it "should NOT include you" do
		twitterfy(test).should_not include("you")
	end

	it "after you is changed, string should include ' u '" do
		twitterfy(test).should include(" u ")
	end

	it "should NOT include at" do
		twitterfy(test).should_not include("at")
	end

	it "after at is changed, string should include @" do
		twitterfy(test).should include("@")
	end

	it "should NOT include and" do
		twitterfy(test).should_not include("and")
	end

	it "after and is changed, string should include &" do
		twitterfy(test).should include("&")
	end


end

