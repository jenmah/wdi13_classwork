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

# mini = Car.new('mini', 'mini cooper s', 'red')
# mini.drive(70)
# I like to drive at 70km/hour






class Book
  attr_reader :title, :author, :publication_date

  def initialize(title, author, publication_date)
    @title = title
    @author = author
    @publication_date = publication_date
  end

  def flip_pages(page_number)
    puts "I am on page number #{page_number}"
  end

  def description
    "#{@title} was written by #{@author}, and published in #{@publication_date}."
  end
end



# first_book = Book.new('Jude The Obscure', 'Thomas Hardy', 1895)
# first_book.flip_pages(77)
# I am on page number 77
# first_book.description
# => "Jude The Obscure was written by Thomas Hardy, and published in 1895."





class Bear
  attr_reader :weight
  attr_accessor :kind, :region, :word

  def initialize(kind, region, weight)
    @kind = kind
    @region = region
    @weight = weight
    @word
  end

  def favorite_word
    puts "I am a talking bear. My favourite word is #{@word}."
  end

  def description
    "This is a #{@kind} bear, weighing #{@weight} pounds and found predominantly in #{@region}."
  end
end

binding.pry

# brown_bear = Bear.new('brown bear', 'North America', 270)
# => #<Bear:0x007f90499823e0 @kind="brown bear", @region="North America", @weight=270>
# brown_bear.description
# => "This is a brown bear bear, weighing 270 pounds and found predominantly in North America."
# brown_bear.favorite_word
# I am a talking bear. My favourite word is .
# brown_bear.word = 'something'
# brown_bear.favorite_word
# I am a talking bear. My favourite word is something.


