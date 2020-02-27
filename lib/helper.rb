module Helperable
  def valid_move?(board, index)
    true if index.between?(0, 8) && !position_taken?(board, index)
  end

  def position_taken?(board, indx)
    if board[indx] == 'X' || board[indx] == 'O'
      true
    else
      false
    end
  end

  def player_names()
    gets.strip
  end

  def next_line()
    puts "\n \n"
  end

  def valid_name?(name)
    return true if name.is_a?(String) && !name.empty?

    false
  end
end
