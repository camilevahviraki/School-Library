# Rentals
class Rental
  def initialize(date, person, book)
    @date = date
    @person_data = person
    @book_data = book
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
end
