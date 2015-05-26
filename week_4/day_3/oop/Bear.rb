require 'pry'

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