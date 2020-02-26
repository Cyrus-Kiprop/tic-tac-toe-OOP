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

  def show_board()
    puts ' <--The Tic Tac Toe-->'
    puts "       #{board[0]}  | #{board[1]} | #{board[2]}         "
    puts "       ***********       " 
    puts "       #{board[3]}  | #{board[4]} | #{board[5]}        " 
    puts "       ***********       " 
    puts "       #{board[6]}  | #{board[7]} | #{board[8]}        " 
    puts ' <--The Tic Tac Toe-->'
  end

  def win_game; end

  def draw_game; end

  def play; end
end

# game = TicTacToe.new()

# game.welcome

