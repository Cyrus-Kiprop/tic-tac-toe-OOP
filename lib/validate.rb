module Validatable
  def validate_number(num)
 num.to_i.is_a?(Integer) ? true : false
  end
end