require_relative 'person'
class Student < Person
  def initialize(classroom, age, name, profession, parent_permission)
    super(age, name, profession)
    @classroom = classroom
  end

  attr_accessor :classroom

  def play_hooky
    "¯\(ツ)/¯"
  end

  def add_to_classroom(label)
    new.Classroom(label)
  end
end
