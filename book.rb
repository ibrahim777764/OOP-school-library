# require './rental'

class Book
  attr_accessor :title, :author

  def initialize
    @books = []
  end

  def list_all_books
    puts 'Database is empty! Add a book.' if @books.empty?
    @books.each { |book| puts "[Book] Title: #{book.title}, Author: #{book.author}" }
  end

  def push_book(title, author)
    
  end

  # def add_rentals(date, person)
  #   Rental.new(date, person, self)
  # end
end
