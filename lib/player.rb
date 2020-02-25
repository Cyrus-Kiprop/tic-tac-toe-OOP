require './lib/validate.rb'

class Player
  include Validatable

  attr_accessor(:name)

  def initialize(name)
    @name = name
  end
end


# Do we instantiate a class inside another class
 
# 

