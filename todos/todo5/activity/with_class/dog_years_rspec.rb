require './dog_years'

=begin
class Dog
  attr_reader :age

  def initialize
    @age = rand(1..14)
  end

  def age_in_years
    age
  end

  def age_in_days
    age * 365
  end

  def age_in_dog_years
    age * 7
  end
end
=end




describe Dog, "#age_in_days" do
  it "Should return 365 days if age 1 * 365 days" do
    expect(age_in_days(1)).to eq(365)
  end
end


describe Dog, "#age_in_years" do
  it "returns 12 for age 12" do
    expect(age_in_years(12)).to eq(12)
  end
end

describe Dog, "#age_in_dog_years" do
  it "Should return 7 dog years if human age 1 * 7 dog years." do
    age_in_dog_years(1).should eq(7)
  end
end
