require 'pry'

class Person
  #Will create getter methods for age and eye_color
  attr_reader :age, :eye_color, :hair_color
  # attr_writer :hair_color (this is commented out because we can use attr_accessor for properties we want to use the getter and setter method of)
  attr_accessor :hair_color
  #This will get called behind the scenes when you create a new person object, you do not have to explicitly call the initialize method
  def initialize(age, eye_color, hair_color)
    @age = age
    @eye_color = eye_color
    @hair_color = hair_color
  end

  # Instance method attached to the person class, you can call this method on all person instances
  def talk(words)
    puts "I say #{words}"
  end

  #Again, another instance method attached to person class
  def walk(style)
    puts "#{style} is the best way to walk"
  end

  #Class method, being called on the person class (remember instance methods are called on an instance of the person class ie / jo.description)
  def self.breed(person1, person2)
    binding.pry
    eye_color = [person1, person2].sample.eye_color
    hair_color: = [person1, person2].sample.hair_color
    child = Person.new(0, eye_color, hair_color)
  end

  # #Setter method
  # def age=(value)
  #   @age = value
  # end

  #Getter method, this will return the age for the instance...
  # def age
  #   @age
  # end

  #Getter method to return the eye_color for the instance of the class
  # def eye_color
  #   @eye_color
  # end

  #Setter instance method
  # def hair_color=(value)
  #   @hair_color = value
  # end 

  #Getter instance method
  # def hair_color
  #   @hair_color
  # end 
end
binding.pry



# Instance Method
# sam.talk('hey')

# Class Method
# Person.breed(jo, sam)





#------- THINGS WE TYPED IN PRY -------#


# Person.breed(jo, sam)

# what we typed in the console after running this file:
# jo = Person.new
# sam = Person.new
# jo.walk('moonwalking')
# moonwalking is the best way to walk


# jo = Person.new
# jo.age=(10)
# => 10
# [4] pry(main)> jo
# => #<Person:0x007fa23983a0a8 @age=10>



# jo = Person.new(28,'blue')
# => #<Person:0x007f8fcc848358 @age=28, @eye_color="blue">
# sam = Person.new(23, 'green')
# => #<Person:0x007f8fcd140d70 @age=23, @eye_color="green">

