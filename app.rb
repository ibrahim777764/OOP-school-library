require './person'
require './student'
require './teacher'
require './book'
require './classroom'
require './rental'
require './book_logic'
require './person_logic'
require './rentals'

class App
  attr_accessor :books_class, :persons_class, :rentals

  def initialize
    @books_class = BookLogic.new
    @persons_class = PersonLogic.new
    @rentals = Rentals.new
  end

  def start_console
    puts 'Welcome to my School Library!'
    until list_of_options
      input = gets.chomp
      if input == '7'
        puts 'Thank You for using my School Library!'
        break
      end
      option input
    end
  end
end
