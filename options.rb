require 'json'

require_relative 'app'

# Options to choose
class Options
  def initialize
    @app = App.new
    
  end

  def app
    @app
  end  

  def tree1(num)
    if num == '1'
      @app.list_books
    else
      ''
    end
  end

  def tree2(num)
    if num == '2'
      @app.list_persons
    else
      ''
    end
  end

  def tree3(num)
    if num == '3'
      @app.new_person
    else
      ''
    end
  end

  def tree4(num)
    if num == '4'
      @app.create_book
    else
      ''
    end
  end

  def tree5(num)
    if num == '5'
      @app.create_rental
    else
      ''
    end
  end

  def tree6(num)
    if num == '6'
      @app.list_rental_by_id
    else
      ''
    end
  end

  def tree7(num)
    if num == '7'
      books_store
      rentals_store
      person_store
      puts 'Exit'
    else
      ''
    end
  end
  
  ######################################Store
  def books_store
    unless Dir.glob("*.json").include? 'books.json'
      File.new("books.json", "w+")
    end

    if File.empty?('books.json')
      book_list = []
    else
      data = File.read("books.json").split
      book_list = JSON.parse(data.join)  
    end

    @app.book_arrz.each do |book|
      book_list.push(book)
    end

    File.open("books.json", "w") do |f|
      f.write(book_list.to_json)
    end
  end

  def person_store
    unless Dir.glob("*.json").include? 'person.json'
      File.new("person.json", "w+")
    end  

    if File.empty?('person.json')
      person_list = []
    else
      data = File.read("person.json").split
      person_list = JSON.parse(data.join)
    end

    @app.person_arr.each do |person|
      person_list.push(person)
    end

    File.open("person.json", "w") do |f|
      f.write(person_list.to_json)
    end
  end

  def rentals_store
    unless Dir.glob("*.json").include? 'rentals.json'
      File.new("rentals.json", "w+")
    end  

    if File.empty?('rentals.json')
      rentals_list = []
    else
      data = File.read("rentals.json").split
      rentals_list = JSON.parse(data.join)
    end

    @app.rental_arr.each do |rental|
      rentals_list.push(rental)
    end

    File.open("rentals.json", "w") do |f|
      f.write(rentals_list.to_json)
    end
    
  end
  
end
