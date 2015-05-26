# Four different ways of if statement syntax:

#1
puts "Hello" if true


#2
if true
  puts "Hello!"
else
  puts "Bye!"
end

 #3
if true then puts "Hello" else puts "Bye" end


#4
if true; puts "Hello"; else; puts "Bye!"; end



print "Enter a number:"
number = gets.to_i

if number > 0
  puts "You entered a positive number!"
elsif number < 0
  puts "You entered a negative number!"
else
  puts "You entered zero!"
end



# if !name could be rewritten as unless


print "Enter a number: "
number = gets.to_i

unless number > 10
  puts "Your number is too small!"
else
  puts "LARGE NUMBER!!!"
end



user_registered = false
puts "Please sign up to continue" unless user_registered
# # instead of
puts "Please sign up to continue" if !user_registered




#CASE STATEMENTS

# puts "Exit the program? (yes or no): "
# answer = gets.chomp.downcase

# case answer
# when "yes"
#   puts "Goodbye!"
# when "no"
#   puts "Ok. Continue!"
# else
#   puts "Not sure what you mean by that..."
# end



# WHILE LOOP
# number = 1
# while number < 11
#   puts number
#   number = number + 1
# end

# puts "done!"


# UNTIL LOOP (does the same as the while loop above)
# number = 1
# until number > 10
#   puts number
#   number = number + 1
# end

# puts "done!"



# for i in 1..10
#   puts i
# end


# for i in 1...10
#   puts i
# end


# for i in 1..10
#   break if i > 5
#   puts "The number you wanted is #{'jen' * i}. How cool!"
# end





# puts "What's the square root of 25?"
# answer = gets.to_i

# case answer
# when 5
#   puts "You got it right"
# when answer < 5
#   puts "Try a bit higher"
# else
#   puts "Not sure what you mean by that..."
# end




# print "What's the square root of 25?"
# number = gets.to_i

# if number < 5
#   puts "Try a bit higher"
# elsif number > 5
#   puts "Try a bit lower"
# elsif number == 5
#   puts "You got it right"
# else
#   puts "Not sure what you mean by that"
# end






print "What is 2 to the 6th power?"
answer = gets.to_i

while answer != 2**19
  print "Nope. Try again: "
  answer = gets.to_i
end

puts "Correct!"






