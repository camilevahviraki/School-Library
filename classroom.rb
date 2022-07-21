require_relative './student'
require_relative './person'

class Classroom
  def initialize(label)
    @label = label
  end
  attr_accessor :label

  def add_student
    students = new.Student(@label)
  end  
end

class Book
  def initialize(title, author)
    @title = title
    @author = author
  end
  attr_accessor :title, :author

  def add_rental(date)
    bookRentals = new.Rental(date)
  end
end

class Rental
  def initialize(date, person_obj, book_obj)
    @date = date
    @person_data = person_obj
    @book_data = book_obj
  end

  attr_accessor :date, :person_data, :book_data

  def belongs_to_book
    title = @book_data.title
    author = @book_data.author
    rental_for_book = new.Book(title, author)
  end

  def belongs_to_person
    age = @person_data.age
    name = @person_data.name
    parent_permission = @person_data.parent_permission
    rental_for_person = new.Person(age, name, parent_permission)
  end

end
