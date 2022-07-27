require_relative 'app'

# Options to choose
class Options
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
end
