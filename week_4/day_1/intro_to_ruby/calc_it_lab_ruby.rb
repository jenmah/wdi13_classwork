# Instructions (using methods)

# Your task is to write a command line calculator application that has two settings, (b)asic and (a)dvanced

# First you will need to ask the user for which calculator they want to use
# Then you will need to ask the user for the numbers to operate on.
# Then you need to work out what to do with the numbers, depending on what operation they choose:


puts "Would you like to use the (b)asic, (a)dvanced, (bmi), or (m)ortgage calculator?: "
answer = gets.chomp.downcase

case answer
  when "b"
    puts "Pick an operation ('+', '-', '*', or '/'): "
    operator = gets.chomp
    puts "Pick a number: "
    first_number = gets.to_f
    puts "Pick a second number: "
    second_number = gets.to_f
      if operator == '+'
        final_answer = first_number + second_number
        puts "The answer is #{final_answer}"
      elsif operator == '-'
        final_answer = first_number - second_number
        puts "The answer is #{final_answer}"
      elsif operator == '*'
        final_answer = first_number * second_number
        puts "The answer is #{final_answer}"
      elsif operator == '/'
        final_answer = first_number / second_number
        puts "The answer is #{final_answer}"
      end
  when "a"
    puts "Pick a function between (p)ower or (sq)uare root:"
    function = gets.chomp
      if function == 'p'
        puts "Pick a number: "
        first_number = gets.to_f
        puts "Pick a second number: "
        second_number = gets.to_f
        final_answer = first_number ** second_number
        puts "The answer is #{final_answer}"
      elsif function == 'sq'
        puts "Pick a number: "
        first_number = gets.to_f
        final_answer = Math.sqrt(first_number)
        puts "The answer is #{final_answer}"
      end 
  when "bmi"
    puts "Would you like to use the (i)mperial or (m)etric system?"
    system = gets.chomp
      if system == "i"  
        puts "Please enter your weight in pounds:"
        weight = gets.to_f
        puts "Please enter your height in inches:"
        height = gets.to_f
        bmi = ((weight*703) / (height*height)).ceil
        puts "Your BMI is #{bmi}"
      elsif system == "m"
        puts "Please enter your weight in kilograms:"
        weight = gets.to_f
        puts "Please enter your height in meters:"
        height = gets.to_f
        bmi = (weight / (height*height)).ceil
        puts "Your BMI is #{bmi}"
      end
    when "m"
      puts "What is the principal of the loan?"
      principal = gets.to_f
      puts "What is your interest rate?"
      interest_rate = gets.to_f
      puts "How many payments do you have?"
      payments = gets.to_f
      monthly_payment = (principal * (interest_rate*(1 + interest_rate)**payments) / ((1 + interest_rate)**payments - 1)).ceil
      puts "Your monthly payments are $#{monthly_payment} per month"  

end








# JEREMY'S SOLUTION


def menu
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced, (m)ortgage, bm(i), (t)rip or (q)uit: "
  gets.chomp.downcase
end

def mortgage_calc
  print "principal: "
  p = gets.to_f
  print "yearly interest rate: "
  i = gets.to_f
  i /= 100
  i /= 12 
  print "number of payments: "
  n = gets.to_i
  x = (1+i)**n
  puts "Your monthly mortgage payment is $#{p*i*x/(x-1)}"
  gets
end

def mpg_utility(speed, mpg)
  if speed > 60
    mpg - ((speed - 60) * 2)
  else
    mpg
  end
end

def trip_calc
  print "distance: "
  distance = gets.to_f
  print "mpg: "
  mpg = gets.to_f
  print "fuel price per gallon: "
  cost = gets.to_f
  print "speed: "
  speed = gets.to_f
  mpg = mpg_utility(speed, mpg)
  puts "It will take you #{distance/speed} hours at a cost of $#{(distance/mpg)*cost}"
  gets
end

def bmi_calc
  puts "Do you want to enter your details in (m)etric or (i)mperial?"
  measurement = gets.chomp.downcase

  case measurement
    when 'i'
      print "weight pounds: "
      weight = gets.to_f
      print "height in inches: "
      height = gets.to_f
      puts "Your BMI is #{(weight/(height**2))*703}"
    when 'm'
      print "weight kilograms: "
      weight = gets.to_f
      print "height in meters: "
      height = gets.to_f
      puts "Your BMI is #{(weight/(height**2))}"
    else
      puts "invalid option"
  end
  gets
end

def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase
  print "first number: "
  a = gets.to_f
  print "second number: "
  b = gets.to_f

  case operation
  when 'a'
    puts "#{a + b}"
  when 's'
    puts "#{a - b}"
  when 'm'
    puts "#{a * b}"
  when 'd'
    puts "#{a / b}"
  end

  gets
end

def advanced_calc
  print "(p)ower, (s)qrt: "
  operation = gets.chomp.downcase
  print "first number: "
  a = gets.to_f

  if operation == 's'
    puts "#{Math.sqrt(a)}"
  else
    print "second number: "
    b = gets.to_f
    puts "#{a**b}"
  end

  gets
end

response = menu

while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  when 'm'
    mortgage_calc
  when 'i'
    bmi_calc
  when 't'
    trip_calc
  end

  response = menu
end



