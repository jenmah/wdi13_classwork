require 'pry'

class Car
  attr_reader :color
  attr_accessor :make, :model

  def initialize(make, model, color)
    @make = make
    @model = model
    @color = color
  end

  def drive(speed)
    puts "I like to drive at #{speed}km/hour"
  end

  def description
    "This car is a #{@color} #{@make}."
  end
end
binding.pry



# mini = Car.new('mini', 'mini cooper s', 'red')
# mini.drive(70)
# I like to drive at 70km/hour
