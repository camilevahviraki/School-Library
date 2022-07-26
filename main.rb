require_relative 'app'

# Main class handle all methods
class Main
  def initialize
    @app = App.new
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
      puts 'Exit'
    else
      ''
    end
  end

  def inputs(int)
    if int == '7'
      tree7(int)
    else
      tree1(int)
      tree2(int)
      tree3(int)
      tree4(int)
      tree5(int)
      tree6(int)
      starting
    end
  end

  def starting
    puts 'Please choose an option by entering a number'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given id'
    puts '7 - Exit'
    num = gets.chomp
    inputs(num)
  end
end

main = Main.new
main.starting
