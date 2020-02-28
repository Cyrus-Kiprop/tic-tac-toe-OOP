require_relative './tictactoe.rb'
# rubocop: disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
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

    player_x = turns.even? ? player[0] : player[1]
    player_x
  end

  def make_move(board, index, token)
    board[index] = token
  end

  def user_position(proc)
    pos = gets.strip

    while pos
      if pos != '' and pos.to_i.class == Integer and pos.to_i.between?(1, 9)
        pos = pos.to_i - 1
        break
      else
        proc.call('INVALID CHOICE!! PLEASE CHOOSE A NUMBER BETWEEN 1-9')
        pos = gets.strip
      end
    end
    pos
  end

  def play(board, _players, proc)
    counter = 0
    x = number_of_turns(board) #=> 0

    while x < board.size - 1
      who_is_playing = current_player(board)
      proc.call("Turn #{number_of_turns(board)} [#{who_is_playing[:name]}]: Its your turn -> choose a position on the score board")
      choose_position(board, proc)
      next_line
      proc.call('Position:')

      pos = user_position(proc)

      make_move(board, pos, who_is_playing[:token]) if valid_move?(board, pos)
      proc.call("This is the number of turns #{number_of_turns(board)}")
      next_line
      show_board(proc, board)
      if number_of_turns(board) >= 5 and win?(board, who_is_playing[:token])
        congratulate(who_is_playing[:name], proc)
        break

      elsif number_of_turns(board) == 9 and !win?(board, who_is_playing[:token])
        proc.call('IT IS A DRAW GAME AND YOU ARE BOTH LOOSERS ')
        break
      end

      counter += 1
    end
  end
end
# rubocop: enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
