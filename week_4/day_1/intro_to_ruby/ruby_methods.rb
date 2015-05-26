# function sayHelloTwo() {
#  console.log('Hello World 2');
# };

# def say_hello
#   puts "Hello world"
# end

# say_hello


# def add(number1, number2)
#   "The result is #{number1 + number2}"
# end

# n1 = 3
# n2 =  5

# puts add(n1, n2)


# def area(length, width)
#   length * width
# end

# def volume(length, width, breadth)
#   area(length, width) * breadth  
# end

# n1 = 3
# n2 = 6
# n3 = 9

# puts volume(n1, n2, n3)


# def tag_name_generator(first, last, gender, age)
#   if gender == 'female'
#     if age > 29
#       puts "Welcome Mrs #{first} #{last}"
#     else
#       puts "Welcome Miss #{first} #{last}"
#     end
#   else
#     puts "Welcome Mr #{first} #{last}"  
#     end
# end

# tag_name_generator('Jen', 'Mah', 'female', 17)
# tag_name_generator('David', 'Beckham', 'male', 34)









# var foo = 1

# function doStuff() {
#  foo++;
#  var bar = 1;
#  console.log(foo);
#  console.log(bar);
# };




# def do_stuff
#   foo = 1
#   foo += 1
#   bar = 1
#   puts foo
#   puts bar
# end

# do_stuff



# x = 0
# def do_stuff(x)
#   foo = x
#   foo += 1
#   bar = 1
#   puts foo
#   puts bar
# end

# do_stuff(x)



# def hello_students(students=['alex', 'daisy', 'dave', 'rick'])
#   puts students
# end

# hello_students(['anne', 'richard', 'pedro', 'ben'])


# - Ruby methods are not hoisted, you can only call them after you have declared them
# - local scople within functions, do not have access to variables declared outsides functions (need to pass them in as arguments)
# - don't have to explicitly use the return keyword like you do in Javascript- if not used the last line will be retured from the function
# do not have to declare variables with var
# do not have to explicitly call functions
# do not need semicolons
# you need to use double quotes for string interpolation “hello #{friend}” (remember in Javascript you do not have interpolation luxury and have to use concatenation)





#PRACTICE

#1 Numbers
# Define a method called silly_check() that takes a number argument and returns "The number is less than 5" if the argument is less than 5 and "The number is greater than or equal to 5" otherwise.

# def silly_check(number)
#   if number < 5
#     puts "The number is less than 5"
#   else 
#     puts "The number is greater than or equal to 5"
#   end
# end   

# silly_check(7)



#2 Drinking age?
# Define a function that takes, as an argument, an age.
# If the age is less than 21, print an appropriate message.
# If the age is over 21, print a different message.

# def drinking_age(age)
#   if age < 21
#     print "You are under the legal age limit"
#   else
#     print "You are of legal drinking age"
#   end
# end

# drinking_age(17)



#3. City Boroughs
# Define a function that takes, as arguments, the borough someone lives in.
# Depending on the answer, print an appropriate response of your choosing (hint a case statement could be appropriate here!)

def city_boroughs(borough)
case borough
  when "london"
    puts "appropriate message"
  when "something else"
    puts "another message!"
  else 
    puts "I'm not sure where that is"
  end
end

puts "Which borough do you live in?:"
borough = gets.chomp
city_boroughs(borough)


