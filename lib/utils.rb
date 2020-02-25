module Utils
 
    def available_positions(board)
        arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        0.upto(board.size - 1) do |x|
          arr[x] = board[x] == '' ? arr[x] : board[x]
        end
        show_board(arr)
      end
    
    
      def choose_position(name)
        
        available_positions(board)
    
        puts "Player #{name}: Please Choose a position"
        num = gets.strip
    
        position = validatable.validate_number(num) ? num : 'Please choose a number from the available position!!!'
        end
    
end