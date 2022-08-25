class Rental
  attr_accessor :date, :person, :book

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book
    person.rentals << self
    book.rentals << self
  end
end
