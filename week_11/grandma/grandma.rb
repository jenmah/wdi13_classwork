# class Grandma

# 	def speak(words)
# 		puts "say something to grandma"
# 		answer = gets.chomp
# 			if answer == "BYE"
# 				puts "I can't hear you!"
# 				second_answer = gets.chomp
# 				puts "I still can't hear you!"
# 				third_answer = gets.chomp
# 					if answer == "BYE" && second_answer == "BYE" && third_answer == "BYE"
#   					puts "fine, goodbye!"
# 					elsif
#   					speak("#{words}")
#   				end
# 			elsif answer == answer.upcase
# 				puts "NO, NOT SINCE #{rand(1930..1950)}!"
# 				speak("#{words}")
# 			else
# 				puts "#{words}"
# 				speak("#{words}")
# 			end
# 	end

# end

# puts grandma = Grandma.new
# grandma.speak("HUH!? SPEAK UP, SONNY!")




# MATHILDA'S SOLUTION
class Grandma
	
	attr_reader :count

	def initialize
		@count = 0
	end

	def speak(words)
		if words == "BYE"
			@count += 1
		elsif words == words.upcase
			@count = 0
			puts "Na, not since 19#{rand(30..50)}"
		else
			@count = 0
			puts "Huh!? Speak up, Sonny!"
		end
	end

end

puts grandma = Grandma.new

while grandma.count < 3
	puts "speak to grandma"
	grandma.speak(gets.chomp)
end

# DEAF GRANDMA PROGRAM SPECS:
# Write a Deaf Grandma program...

# Whatever you say to grandma (whatever you type in), she should respond with
# HUH?! SPEAK UP, SONNY!

# unless you shout it (type in all capitals).
# If you shout, she can hear you (or at least she thinks so) and yells back
# NO, NOT SINCE 1938!

# To make your program really believable, have grandma shout a different year each time; maybe any year at random between 1930 and 1950.

# You can't stop talking to grandma until you shout BYE (when you shout bye the programme should exit)

# EXTENSIONS:
# What if grandma doesn't want you to leave? When you shout BYE, she could pretend not to hear you. Change your previous program so that you have to shout BYE three times in a row. Make sure to test your program: if you shout BYE three times, but not in a row, you should still be talking to grandma.