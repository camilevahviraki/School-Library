require_relative './student'
require_relative './teacher'
require_relative './nemable'
require_relative './base'

class Person < Nameable
  extend Student
  extend Teacher

  def initialize(age, name, parent_permission: true)
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
    new.Rental(rental_date, person_data, book_data)
  end

  private :isof_age?
end

person = Person.new(22, 'maximilianus')
person.correct_name
capitalize_person = CapitalizeDecorator.new(person)
capitalize_person.correct_name
capitalize_trimer = TrimmerDecorator.new(capitalize_person)
capitalize_trimer.correct_name
