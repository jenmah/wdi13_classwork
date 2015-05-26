# Take input from the user and return it censored so that the letters of black-listed words end up as ****'s.

# banned_words = ['fuck', 'shit', 'fucking']

# def censor_input
#   puts "Please input a sentence"
#   input = gets.chomp
#   array_of_words = input.split(' ')
#     final_output=array_of_words.map do |words| 
#       if array_of_words.include?('test') == true
#         puts this worked
#       elsif array_of_words.include?(banned_words) == false
#         puts this also worked
#       end
#     end
# end

# censor_input




# take a string of input from the user
# create a function which searches that string for banned words
# if banned words are found, have them switched out with ***
# print that revised string to the user




# LAUREN'S ANSWER


# Take input from the user and return it censored so that the letters of black-listed words end up as ****'s.


#1. Create array of bad words
#2. Collect input from the terminal
#hint: What type of object is the collected input? How can we convert it to an object that's easier to compare again the array of bad words?
#3. Turn text you're censoring into an array
#4. Use .each/.each_with_index OR .collect/.collect! OR .map/.map! to iterate over the input array and in the block covert black-listed words to *****'s'
#5. If you finish early look into using a ternary statement to refactor .collect and .map methods.


puts 'input text'
textToCheck = gets.chomp

badWords = %w(crap damn heck bollocks)

textArray = textToCheck.split(' ')


## answer with .each_with_index

textArray.each_with_index do |word, index|
  if badWords.include?(word)
    replacement = "*" * word.length
    textArray[index] = replacement
  end
end

## ---------answer with .map---------

# textArray = textArray.map do |word|
#   if badWords.include?(word)
#     "*" * word.length
#   else
#     word
#   end
# end

## ---------answer with .map!---------

# textArray.map! do |word|
#   if badWords.include?(word)
#     "*" * word.length
#   else
#     word
#   end
# end

## ---------answer with .collect and a ternary statement---------

# textArray = textArray.collect {|word| badWords.include?(word) ? ("*" * word.length) : word }

## ---------answer with .collect! and a ternary statement---------

# textArray.collect! {|word| badWords.include?(word) ? ("*" * word.length) : word }

## ---------answer with .map and a ternary statement---------

# textArray = textArray.map { |word| badWords.include?(word) ? ("*" * word.length) : word }

## ---------answer with .map! and a ternary statement---------

# textArray.map! { |word| badWords.include?(word) ? ("*" * word.length) : word }

finalOutput = textArray.join(' ')

puts finalOutput

