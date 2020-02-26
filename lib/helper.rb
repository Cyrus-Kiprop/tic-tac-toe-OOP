module Helperable
  def validate_move; end

  def is_position_taken?; end

  def get_player_names()
    input = gets.strip
  end

  def next_line()
    puts "\n \n"
  end

  def is_valid_name?(name)
    return true if name.is_a?(String) && !name.empty?

    false
  end
end
