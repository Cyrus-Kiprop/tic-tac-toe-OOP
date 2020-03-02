require_relative './helper.rb'

class TicTacToe
  include Helperable
  attr_reader :board

  def initialize(board)
    @board = board
  end

  def welcome()
    '     |    | |=== |    |===   ===  |\  /| |===
     | /\ | |=== |    |     |   | | \/ | |===
     |/  \| |=== |=== |===   ===  |    | |===
    '
  end

  def welcome_board()
    '     <--The Tic Tac Toe-->
             | X | O
          ***********
           X | O | X
          ***********
             | O |
     <--The Tic Tac Toe-->'
  end

  def show_board(proc, board = @board)
    message = (board == @board ? ' Current score listing' : ' Current available positions')
    proc.call(" #{message} \n ")

    proc.call("<--The Tic Tac Toe-->
           #{board[0]}  | #{board[1]} | #{board[2]}
           ***********
           #{board[3]}  | #{board[4]} | #{board[5]}
           ***********
           #{board[6]}  | #{board[7]} | #{board[8]}
     <--The Tic Tac Toe-->")
  end

  def choose_position(board, proc)
    position = Array.new(9, ' ')

    board.each_with_index do |item, idx|
      position[idx] = idx + 1 unless %w[X O].include?(item)
    end
    show_board(proc, position)
  end

  def win?(board, token)
    factor = proc { |item| item == token }

    combinations = [board[0..2], board[3..5], board[6..8], [board[0],
                                                            board[3], board[6]], [board[1], board[4], board[7]],
                    [board[2], board[5], board[8]], [board[0], board[4],
                                                     board[8]], [board[2], board[4], board[6]]]

    return true if combinations.any? { |value| value.all?(&factor) }

    false
  end

  def congratulate(player, proc)
    proc.call("              ----GAME OVER----\n
            #{player} is the winner!!! \n
         |   |  |  |\  |  |\  |  |===   ++++
         | /\ |  |  | \ |  | * |  |===   + \+
         |/  \|  |  |  \|  |  \|  |===   *  \ +
          ")
  end

  def number_of_turns(board)
    turns = 0
    board.each do |token|
      turns += 1 if %w[X O].include?(token)
    end
    turns
  end

  def draw_game(board, token)
    return true if number_of_turns(board) == board.size - 1 and !win(board, token)

    false
  end
end
