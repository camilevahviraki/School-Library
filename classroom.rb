require_relative './student'
require_relative './person'
require_relative './classroom'

class Classroom
  def initialize(label)
    @label = label
  end
  attr_accessor :label

  def add_student
    new.Student(@label)
  end
end

class Book
  @@books = []
  def initialize(title, author)
    @title = title
    @author = author
    @@books.push({ 'title' => @title, 'author' => @author })
  end
  attr_accessor :title, :author

  def add_rental(date)
    new.Rental(date)
  end

  def list_of_books
    @@books.each_with_index do |book, idx|
      puts "#{idx}) Title: #{book['title']}, Author: #{book['author']}"
    end
  end

  def books_array
    @@books
  end
end

class Rental
  @@rentals = []
  def initialize(date, person, book)
    @date = date
    @person_data = person
    @book_data = book
    @@rentals.push({ 'date' => date, 'person_name' => person, 'book' => book })
  end

  attr_accessor :date, :person_data, :book_data

  def belongs_to_book
    title = @book_data.title
    author = @book_data.author
    new.Book(title, author)
  end

  def belongs_to_person
    age = @person_data.age
    name = @person_data.name
    parent_permission = @person_data.parent_permission
    new.Person(age, name, parent_permission)
  end

  def rental_list
    @@rentals
  end
end
