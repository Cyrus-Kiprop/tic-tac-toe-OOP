require './lib/helper.rb'

class TicTacToe

    include Helperable
  attr_accessor :board

  def initialize(board)
    @board = board
  end

  def show_board; end

  def win_game; end

  def draw_game; end

  def play; end
end

game = TicTacToe.new(['', '', '', '', '', '', '', '', ''])

p game.board
