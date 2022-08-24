class Nameable
  def correct_name
    raise NotImplementedError
  end
end

class BaseDecorator < Nameable
  def initialize(nameable)
    super()

    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < BaseDecorator
  def correct_name
    corrected_name = @nameable.correct_name
    corrected_name = corrected_name[0..9] if corrected_name.size > 10
    corrected_name
  end
end
