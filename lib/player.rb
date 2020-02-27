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

  def current_player(board)
    turns = number_of_turns(board)
    puts turns
    player_x = turns.even? ? player[0] : player[1]
    puts player_x
    player_x
  end

  def make_move(board, index, token)
    board[index] = token
  end

  def play(board, _players)
    game_on = true
    counter = 0
    x = number_of_turns(board)  #=> 0

    while x < board.size - 1
      who_is_playing = current_player(board)
      puts "Turn #{counter} [#{who_is_playing[:name]}]: Its your turn -> choose a position on the score board"
      choose_position(board)
      next_line
      puts 'Position:'
      pos = gets.strip
      while pos
        if pos != '' and pos.to_i.class == Integer
          pos = pos.to_i - 1
          break
        else
          pos = gets.strip
        end
      end

      # validate the move
      make_move(board, pos, who_is_playing[:token]) if valid_move?(board, pos)

      turn_count = number_of_turns(board)

      puts "Current turn #{counter}"

      next_line
      # puts 'Current results on the table'
      show_board(board)

      next unless x >= 5 and win?(board, who_is_playing[:token])

      congratulate(who_is_playing[:name])
      break

      counter += 1

  end
end
end

# puts game_play.player
