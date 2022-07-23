require_relative './student'
require_relative './person'
require_relative './classroom'
# Classroom of students
class Classroom
  def initialize(label)
    @label = label
  end
  attr_accessor :label

  def add_student
    new.Student(@label)
  end
end
