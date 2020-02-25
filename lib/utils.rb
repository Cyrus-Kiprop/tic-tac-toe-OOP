module Utils
 
  def available_positions(board)
      arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      0.upto(board.size - 1) do |x|
        arr[x] = board[x] == '' ? arr[x] : board[x]
      end
      show_board(arr)
    end
    
    def show_board(board)
      x = 0
      while x < board.size
        puts "      #{board[x]} | #{board[x + 1]} | #{board[x + 2]} \n     ***********      "
        x += 3
      end
    end
  
  
    def choose_position(name,board)
      
      available_positions(board)
  
      puts "Player #{name}: Please Choose a position"
      num = gets.strip
  
      position = validate_number(num) ? num : 'Please choose a number from the available position!!!'
      end

      def play(position, board)
        #we have the position
        # we need to reflect that choosen position on the array index of the game board
        # player_position_one = 9 if this number  = board
        new_position = position - 1
       board.index[new_position] = 'x' if board.index[new_position]
      end
end