# Books
class Book
  def initialize(title, author)
    @title = title
    @author = author
  end
  attr_accessor :title, :author

  def add_rental(date)
    new.Rental(date)
  end
end
