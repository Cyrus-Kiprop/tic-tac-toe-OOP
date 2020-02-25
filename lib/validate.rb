module Validatable
  def validate_number(num)
    num.is_a(Integer) ? true : false
  end
end
