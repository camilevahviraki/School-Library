require_relative 'app'

# case int
# when '1'
#   @app.list_books
#   starting
# when '2'
#   @app.list_persons
#   starting
# when '3'
#   @app.new_person
#   starting
# when '4'
#   @app.create_book
#   starting
# when '5'
#   @app.create_rental
#   starting
# when '6'
#   @app.list_rental_by_id
#   starting
# when '7'
#   puts 'Exit'
# else
#   puts 'Sorry, Enter a number between 1 and 7 to chose an option'
#   puts ' '
#   starting
# end

# Main class handle all methods
class Main
  def initialize
    @app = App.new
  end

  def three1(num)
    if num == '1'
      @app.list_books
      starting
    else
      ''
    end
  end

  def three2(num)
    if num == '2'
      @app.list_persons
      starting
    else
      ''
    end
  end

  def three3(num)
    if num == '3'
      @app.new_person
      starting
    else
      ''
    end
  end

  def three4(num)
    if num == '4'
      @app.create_book
      starting
    else
      ''
    end
  end

  def three5(num)
    if num == '5'
      @app.create_rental
      starting
    else
      ''
    end
  end

  def three6(num)
    if num == '6'
      @app.list_rental_by_id
      starting
    else
      ''
    end
  end

  def three7(num)
    if num == '7'
      puts 'Exit'
    else
      ''
    end
  end

  def inputs(int)
    three1(int)
    three2(int)
    three3(int)
    three4(int)
    three5(int)
    three6(int)
    three7(int)
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
