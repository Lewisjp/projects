require './yahtzee' 
=begin
 def roll_dice
    Array.new(5) { rand(1..6) }
  end
 
  def win? roll
    roll.uniq.length == 1 ? true : false
  end
=end

describe "#win?" do
  it "return true if all the numbers are the same" do
    expect(win?([1, 1, 1, 1, 1])).to eq(true)
  end
  it "return false if not all the numbers are the same" do
    expect(win?([1, 2, 3, 4, 5])).to eq(false)
  end
end

describe "#roll_dice" do
  it "return true if 5 indexes have numbers" do
    expect(roll_dice.count).to eq(5)
  end
end