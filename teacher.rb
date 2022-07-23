require_relative './person'

# Teacher class
class Teacher < Person
  def initialize(specialization, age, name, profession)
    super(age, name, profession)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
