require 'pry'

class Robot
  def initialize
    @counter = 0
  end

  def name
    @counter += 1
    @name ||= create_name
  end

  def reset
    @counter += 1
    @name = nil
  end

  private
  def create_name
    prefix = ('A'..'Z').to_a.shuffle[0..1].join('')
    suffix = (100..1000).to_a.sample
    "#{prefix}#{suffix}"
  end
end
robots = []
robot1 = Robot.new
robot2 = Robot.new
robots << robot1 << robot2
puts robot1.name
puts robot1.name
puts robot1.name
puts robot1.reset





# Robot Name

# When robots come off the factory floor, they have no name.

# The first time you boot them up, a random name is generated, such as RX837 or BC811.

# In other words, if I say:

# ```ruby
# puts "Robot 1: "
# robot1 = Robot.new
# puts robot1.name
# puts robot1.name
# puts robot1.name

# puts "Robot 2: "
# robot2 = Robot.new
# puts robot2.name
# puts robot2.name
# puts robot2.name
# ```

# then robot1 will print the same name 3 times, and robot2 will not have the same name as robot1.

# Every once in a while we need to reset a robot to its factory settings, which means that their name gets wiped. The next time you ask, it gets a new name.

# if I say:

# ```ruby
# puts "Robot 3: "
# robot3 = Robot.new
# puts robot3.name
# puts robot3.name
# puts "Resetting to factory settings."
# robot3.reset
# puts robot3.name
# puts robot3.name
# ```

# then robot3 will have the same name twice, then we'll get the reset message, then it will get a new name, and print it twice.

# ## Extensions

# ### Counters

# It's important that we not overwork our robots. While resetting to factory defaults is great, the wear and tear on the robot mechanics doesn't go away. Have your robot track the total number of operations that have been performed on it.

# ```ruby
# puts "Robot 3: "
# robot3 = Robot.new
# puts robot3.name
# puts robot3.name
# puts "Resetting to factory settings."
# robot3.reset
# puts robot3.name
# puts robot3.name
# puts robot3.instruction_count # => 5