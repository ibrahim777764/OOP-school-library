class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add.rentals(rentals)
    @rentals.push(rentals)
    rentals.book = self
  end
end
