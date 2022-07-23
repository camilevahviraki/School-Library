require_relative './nemable'
require_relative './base'

class Person < Nameable
  def initialize(age, name, profession, parent_permission: true)
    super(self)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name, :age, :parent_permission

  def get
    {
      'id' => @id,
      'name' => @name,
      'age' => @age
    }
  end

  def set(name, age)
    @name = name
    @age = age
  end

  def isof_age?
    @age > 18
  end

  def can_use_services?
    @parent_permission == true || isof_age?
  end

  def correct_name
    @name
  end

  def add_rental(rental_date, book_data)
    person_data = {
      age => @date,
      name => @name,
      parent_permission => @parent_permission
    }
    @rental_date << rental_date
    rental_date.person << self
    new.Rental(rental_date, person_data, book_data)
  end

  private :isof_age?
end
