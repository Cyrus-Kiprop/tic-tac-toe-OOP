require_relative './tictactoe.rb'

class Player < TicTacToe
  attr_reader :player

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two

    @player = [
      {
        name: @player_one,
        token: 'X'
      },
      {
        name: @player_two,
        token: 'O'
      }
    ]
  end

  def make_move; end

  def play; end
end

game_play = Player.new('Alexis Sanchez', 'Cyrus Kiprop')

puts game_play.player
