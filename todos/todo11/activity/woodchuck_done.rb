  # create random number of woodchucks
  # each randomly chuck an amount of wood 
  # then how much was chucked individually and by total

class Woodchuck
  attr_accessor :chuck_count

  @@woodchuck_count = 0
  WOODCHUCKS = []

  def initialize
    @chuck_count = 0
    @@woodchuck_count += 1
    WOODCHUCKS << self
  end

  def chuck_wood
    @chuck_count += 1
  end

  def self.woodchuck_count
    @@woodchuck_count
  end

end

#generate 1 - 10 Woodchucks

rand(1..10).times do | woodchuck_team |
  Woodchuck.new
end

#Have all woodchucks chuck 1 - 10 pieces of wood 

rand(1..10).times do |munch|
  Woodchuck::WOODCHUCKS.each do |woodchuck|
    rand(10).times do |munch|
      woodchuck.chuck_wood
    end
  end
end 

total_chucked = 0
numbered_woodchuck = 0
puts "Each Woodchuck chucke the following amount of wood:"
Woodchuck::WOODCHUCKS.each do |woodchuck|
  numbered_woodchuck += 1
  puts "Woodchuck #{numbered_woodchuck} chucked #{woodchuck.chuck_count} pounds of wood."
  total_chucked += woodchuck.chuck_count
end

# puts Woodchuck::WOODCHUCKS.inspect
puts "\n\n#{Woodchuck.woodchuck_count} Woodchucks chucked #{total_chucked} pounds of wood."
