require 'json'

require_relative 'app'

# Options to choose
class Options
  def initialize
    @app = App.new
  end

  attr_reader :app

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

  # #####################################Store
  def books_store
    File.new('books.json', 'w+') unless Dir.glob('*.json').include? 'books.json'

    if File.empty?('books.json')
      book_list = []
    else
      data = File.read('books.json').split
      book_list = JSON.parse(data.join)
    end

    @app.book_arrz.each do |book|
      book_list.push(book)
    end

    File.write('books.json', book_list.to_json)
  end

  def person_store
    File.new('person.json', 'w+') unless Dir.glob('*.json').include? 'person.json'

    if File.empty?('person.json')
      person_list = []
    else
      data = File.read('person.json').split
      person_list = JSON.parse(data.join)
    end

    @app.person_arr.each do |person|
      person_list.push(person)
    end

    File.write('person.json', person_list.to_json)
  end

  def rentals_store
    File.new('rentals.json', 'w+') unless Dir.glob('*.json').include? 'rentals.json'

    if File.empty?('rentals.json')
      rentals_list = []
    else
      data = File.read('rentals.json').split
      rentals_list = JSON.parse(data.join)
    end

    @app.rental_arr.each do |rental|
      rentals_list.push(rental)
    end

    File.write('rentals.json', rentals_list.to_json)
  end
end
