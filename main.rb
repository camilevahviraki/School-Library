require_relative 'options'
# Main class handle all methods
class Main
  def initialize
    @option = Options.new
  end

  def inputs(int)
    if int == '7'
      @option.tree7(int)
    else
      @option.tree1(int)
      @option.tree2(int)
      @option.tree3(int)
      @option.tree4(int)
      @option.tree5(int)
      @option.tree6(int)
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
