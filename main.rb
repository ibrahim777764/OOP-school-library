require './app'
require './book.rb'
require './new_book.rb'

def main
  app = App.new
  app.start_console
end

def book_listing
  book = Book.new
  book.list_all_books
end

def book_creation
  newbook = BookCreation.new('undefined', 'undefined')
  newbook.create_book
end

def list_of_options
  puts
  puts 'Choose an option by entering a number: '
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end

def option(input)
  case input
  when '1'
    book_listing
  when '2'
    list_all_persons
  when '3'
    create_person
  when '4'
    book_creation
  when '5'
    create_rental
  when '6'
    list_all_rentals
  else
    puts 'Please enter a number between 1 and 7.'
  end
end

main
