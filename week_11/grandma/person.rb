require 'pry'

class Person
	# This will create the getter and setter methods for the age attribute
	attr_accessor :age

	# Initialize is run when you instantiate a new object
	def initialize(options={})
		@age = options[:age]
		@gender = options[:gender]
	end

	# Instance method
	def speak(words)
		puts "#{words}, reply: GO HOME"
	end
end

puts person1 = Person.new({age: 43, gender: 'male'})
binding.pry
person1.speak("YO")
