require_relative './student'
require_relative './teacher'

class Person
  extend Student
  extend Teacher
  
  attr_accessor :name, :age, :parent_permission

  def initialize(name, age, parent_permission)
    @id = 0
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def self.inherited(subclass)
    subclass.define_method :override do
      parent_permission = true
      super
    end
  end

  def getter
    {
      'id' => @id,
      'name' => @name,
      'age' => @age
    }
  end

  def setter(name, age)
    @name = name
    @age = age
  end

  def isof_age?
    @age > 18
  end

  def can_use_services?
    if @age >= 18
      (@parent_permission == true)
    else
      false
    end
  end
end

person = Person.new('Camilux1', 19, true)

p(person.isof_age?)
p(person.can_use_services?)
p(person.getter)
person.setter('azelton', 22)
p(person.getter)
p(Person.play_hooky)
