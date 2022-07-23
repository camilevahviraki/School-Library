# class Nemeable
class Nameable
  def initialize(nameable)
    @nameable = nameable
  end

  attr_accessor :nameable

  def correct_name
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
