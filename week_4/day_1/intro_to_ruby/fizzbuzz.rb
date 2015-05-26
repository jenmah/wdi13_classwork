# #1
i = 1
while i<101
    if((i%3==0)&&(i%5==0))
        puts "fizzbuzz"
    elsif(i%3==0)
        puts "fizz"
    elsif(i%5==0)
        puts "buzz"
    else
        puts "#{i}"
    end
    i=i+1;
end



# #2
i = 1
until i>100
    if((i%3==0)&&(i%5==0))
        puts "fizzbuzz"
    elsif(i%3==0)
        puts "fizz"
    elsif(i%5==0)
        puts "buzz"
    else
        puts "#{i}"
    end
    i=i+1;
end



# #3
i = 1
while i <101
    flag = true
    if(i%3==0)
        print 'fizz'
        flag = false
    end
    if(i%5==0)
        print 'buzz'
        flag = false
    end
    print "#{i}" if flag
    puts ""
    i = i+1
end



# #4
for i in 1..100
      if((i%3==0)&&(i%5==0))
        puts "fizzbuzz"
    elsif(i%3==0)
        puts "fizz"
    elsif(i%5==0)
        puts "buzz"
    else
        puts "#{i}"
    end
    i=i+1;
end



#5
i = 1
100.times do
    if((i%3==0)&&(i%5==0))
        puts "fizzbuzz"
    elsif(i%3==0)
        puts "fizz"
    elsif(i%5==0)
        puts "buzz"
    else
        puts "#{i}"
    end
    i=i+1;
end