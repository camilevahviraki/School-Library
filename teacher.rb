module Teacher
  def initialize(specialization)
    @specialization = specialization
    super
  end

  def can_use_service?
    true
  end
end
