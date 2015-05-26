require 'pry'

require_relative '../lib/shelter'
require_relative '../lib/animal'
require_relative '../lib/client'


happitails_shelter = Shelter.new

animal_one = Animal.new({name: 'Kobe', type: 'cat', age: 4, sex: 'male'})
animal_two = Animal.new({name: 'Mario', type: 'cat', age: 5, sex: 'male'})

happitails_shelter.animals << animal_one << animal_two

def menu
  puts `clear`
  puts "------------  HappiTails Animal Shelter  ------------"
  puts "what would you like to do?"
  puts "(0) Register a new animal to the shelter \n(1) List all available animals \n(2) Get an animal description \n(3) List all clients \n(4) Adopt an animal \n(5) Return an animal \n (q)uit"
  puts "-" * 53
  response = gets.chomp
end


response = menu

while response != 'q'
  case response
  when '0'
    puts "What is the name of the animal \n"
    name = gets.chomp
    puts "What type of animal is it: cat or dog? \n"
    type = gets.chomp
    puts "How old is the animal? \n"
    age = gets.chomp.to_i
    puts "Is the animal male or female? \n"
    gender = gets.chomp
    animal = Animal.new({name: name, type: type, age: age, gender: gender})
    happitails_shelter.animals << animal
    puts "#{name} is now in the HappiTails System. Thanks!"
  when '1'
    list_of_animals = happitails_shelter.list_animals
  when '2'
    puts "testing"
  when '3'
    puts "testing"
  when '4'
    puts "testing"
  end
  puts '-' * 41
  puts "press enter to continue"
  gets
  response = menu
end




binding.pry
nil