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


Woodchuck.new
Woodchuck.new
Woodchuck.new
Woodchuck.new

Woodchuck::WOODCHUCKS.each do |woodchuck|
  woodchuck.chuck_wood
end

puts Woodchuck::WOODCHUCKS.inspect