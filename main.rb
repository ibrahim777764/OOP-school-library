require './app'

def main
  app = App.new
  app.start_console
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
    list_all_books
  when '2'
    list_all_persons
  when '3'
    create_person
  when '4'
    create_book
  when '5'
    create_rental
  when '6'
    list_all_rentals
  else
    puts 'Please enter a number between 1 and 7.'
  end
end

main
