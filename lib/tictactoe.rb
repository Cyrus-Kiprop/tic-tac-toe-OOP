require_relative './helper.rb'

class TicTacToe
  include Helperable
  attr_accessor :board

  def initialize(board)
    @board = board
  end

  def welcome()
    puts ' '
    puts ' '
    puts '|    | |=== |    |===   ===  |\  /| |=== '
    puts '| /\ | |=== |    |     |   | | \/ | |=== '
    puts '|/  \| |=== |=== |===   ===  |    | |=== '
    puts ' '
    welcome_board
  end

  def welcome_board()
    puts ' <--The Tic Tac Toe-->'
    puts '         | X | O        '
    puts '      ***********       '
    puts '       X | O | X        '
    puts '      ***********       '
    puts '         | O |          '
    puts ' <--The Tic Tac Toe-->'
    puts "\n"
  end

  def show_board(board = @board)
    message = (board == @board ? ' Current score listing' : ' Current available positions')
    puts message
    puts ' <--The Tic Tac Toe-->'
    puts "       #{board[0]}  | #{board[1]} | #{board[2]}         "
    puts '       ***********       '
    puts "       #{board[3]}  | #{board[4]} | #{board[5]}        "
    puts '       ***********       '
    puts "       #{board[6]}  | #{board[7]} | #{board[8]}        "
    puts ' <--The Tic Tac Toe-->'
  end

  def choose_position(board)
    position = Array.new(9, ' ')

    board.each_with_index do |item, idx|
      position[idx] = idx + 1 unless item == 'X' || item == 'O'
    end
    show_board(position)
  end

  def win_game; end

  def win?(board, token)
    factor = proc { |item| item == token }

    combinations = [board[0..2], board[3..5], board[6..8], [board[0], board[3], board[6]], [board[1], board[4], board[7]], [board[2], board[5], board[8]], [board[0], board[4], board[8]], [board[2], board[4], board[6]]]

    return true if combinations.any? { |value| value.all?(&factor) }

    false
  end

  # Congratulate  a winner
def congratulate(player)
  puts "#{player} is the winner!!!"
  puts '     |    |  |  |\  |  |\  |  |===   ++++ '
  puts '     | /\ |  |  | \ |  | * |  |===   + \+ '
  puts '     |/  \|  |  |  \|  |  \|  |===   *  \ '
end

  def number_of_turns(board)
    turns = 0
    board.each do |token|
      turns += 1 if token == 'X' or token == 'O'
    end
    turns
  end



  def draw_game; end
end

# game = TicTacToe.new()

# game.welcome
