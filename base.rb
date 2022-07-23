require_relative './nemable'
# Base class inherit to nemeable
class Base < Nameable
  def initialize(nameable)
    @nameable = nameable
    super(nameable)
  end

  def correct_name
    @nameable.correct_name
  end
end

# Capitalize string
class CapitalizeDecorator < Base
  def correct_name
    @nameable.correct_name.capitalize
  end
end

# Trimmer a string
class TrimmerDecorator < Base
  def correct_name
    if @nameable.correct_name.length <= 10
      @nameable.correct_name
    else
      @nameable.correct_name[0, 10]
    end
  end
end
