class HomeController < ApplicationController

  def home
    puts "******* Big Fat Errror *******"
    x = 50
    y = 2
    binding.pry
    xto / y
  end

end