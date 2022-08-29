require './book.rb'

class BookCreation

    def initialize(title, author)
        @title = title
        @author = author
    end

    def create_book
        puts 'Create a new book'
        print 'Enter title: '
        title = gets.chomp
        print 'Enter author: '
        author = gets.chomp
        book = Book.new
        book.push_book(title, author)
        puts "Book #{title} created successfully."
    end
end