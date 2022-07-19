require_relative './Student'
require_relative './Teacher'

class Person
  extend Student::Student
  extend Teacher::Teacher

  attr_accessor :name
  attr_accessor :parent_permission
  attr_accessor :age
  def initialize(name, age, parent_permission)
    @id=0
    @name=name
    @age=age
    @parent_permission=parent_permission
  end

  def self.inherited(subclass)
    subclass.define_method :override do
      parent_permission=true
    end
  end

  def getter
    obj={
      'id'=> @id,
      'name' => @name,
      'age'=> @age,
    }
    return obj
  end

  def setter(name, age)
    @name=name
    @age=age
  end

  def is_of_age?
    unless @age <= 18
      return true
    else
      return false
    end
  end

  def can_use_services?
    if(@age >= 18)
      if(@parent_permission == true)
      return true
      else
        return false
      end
    else
      return false
    end
  end

end

person = Person.new("Camilux1", 19, true)

p (person.is_of_age?)
p (person.can_use_services?)
p (person.getter)
person.setter("azelton", 22)
p (person.getter)
