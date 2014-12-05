
class Dog
  attr_reader :legs
  attr_reader :had_accident
  attr_accessor :NUM_LEGS

  @@NUM_LEGS = 4
  
  def initialize
    @legs = @@NUM_LEGS 
    @had_accident = false
  
  end

  def loses_a_leg
    @had_accident = true
    @legs -= 1
  end

  def self.set_num_legs(num)
    @@NUM_LEGS = num
  end
end

fofo = Dog.new
puts "started off with #{fofo.legs} legs"
puts "had accident: #{fofo.had_accident}"
puts "losing leg..."
sleep 2
fofo.loses_a_leg
puts "now has #{fofo.legs} legs"
puts "had accident: #{fofo.had_accident}"

puts "god comes along and declares dogs will have 5 legs from now on..."
sleep 2
Dog.set_num_legs(5)
roro = Dog.new
puts "roro is born and has #{roro.legs} legs"