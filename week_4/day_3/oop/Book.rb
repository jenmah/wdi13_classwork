require 'pry'

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
binding.pry



# first_book = Book.new('Jude The Obscure', 'Thomas Hardy', 1895)
# first_book.flip_pages(77)
# I am on page number 77
# first_book.description
# => "Jude The Obscure was written by Thomas Hardy, and published in 1895."