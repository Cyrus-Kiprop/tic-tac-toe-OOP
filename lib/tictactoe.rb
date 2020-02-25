require './helper.rb'

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
    show_board
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

  def show_board(_board)
    puts ' <--The Tic Tac Toe-->'
    puts '         | X | O        '
    puts '      ***********       '
    puts '       X | O | X        '
    puts '      ***********       '
    puts '         | O |          '
    puts ' <--The Tic Tac Toe-->'
  end

  def win_game; end

  def draw_game; end

  def play; end
end

game = TicTacToe.new(['', '', '', '', '', '', '', '', ''])

game.welcome

game.show_board
