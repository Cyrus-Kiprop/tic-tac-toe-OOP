#!/usr/bin/env ruby

# board that stores the result
board = ['', '', '', '', '', '', '', '', '']

def welcome()
  puts ' '
  puts '|    | |=== |    |===   ===  |\  /| |=== '
  puts '| /\ | |=== |    |     |   | | \/ | |=== '
  puts '|/  \| |=== |=== |===   ===  |    | |=== '
  puts ' '
  puts ' '
end
welcome

# we need to display the bord to the user
puts 'Welcome to the tic tac toe game'
def show_board()
  puts '       X | X | X        '
  puts '      ***********       '
  puts '         | O |          '
  puts '      ***********       '
  puts '         | O |          '
end

show_board

puts 'Please press any key to play'
gets.chomp

# Instantiating the player
puts 'Player_1 Name: '
player_one = gets.chomp
puts "#{player_one} is Player_one with Token \"X\" "
puts ' '
puts 'player_2 Name: '
player_two = gets.chomp
puts "#{player_two} is Player_two with Token \"O\" "

puts "\n \n"

$players = [
  { 'name' => [player_one],
    'token' => 'X' },
  { 'name' => [player_two],
    'token' => 'O' }
]

# puts 'Please choose a position to play!!!'
def choose_position()
  puts ' 1 | 2 | 3 '
  puts '***********'
  puts ' 4 | 5 | 6 '
  puts '***********'
  puts ' 7 | 8 | 9 '

  puts "\n \n"
end

$players = [
  { 'name' => [player_one],
    'token' => 'X' },
  { 'name' => [player_two],
    'token' => 'O' }
]
def win?(board, token)
  factor = Proc.new { |item| item == token }
  combinations = [ board[0..2], board[3..5], board[6..8], [board[0], board[3], board[6]], [board[1], board[4], board[7]], [board[2], board[5], board[8]], [board[0], board[4], board[8]], [board[2], board[4], board[6]],]
return true if combinations.any?{ |value| value.all?(&factor) }
false
end

# Congratulate  a winner
def congratulate(player)
  puts "#{player} is the winner!!!"
  puts '     |    |  |  |\  |  |\  |  |===   ++++ '
  puts '     | /\ |  |  | \ |  | * |  |===   + \+ '
  puts '     |/  \|  |  |  \|  |  \|  |===   *  \ '
end

# Players making turns
def play(board)
  plays = [0,0,0,0,0,0,0,0,0]
  game_on = true
  turn = 1
  player = $players[0]['name']

  while game_on
      puts "Turn #{turn}"
    if player == $players[0][:name]
      puts "#{player} please choose you position in the board"
      puts "\n \n"
      choose_position
      puts "\n \n"
      puts 'Position:'
      plays[gets.chomp.to_i-1] = $players[0][:token]
       if turn > board.size - 4 && win?(plays,$players[0][:token])
        game_on = false
        congratulate(player) 
       end
    
      player = $players[1][:name]
      turn+= 1
      puts "Turn #{turn}"
      puts 'Current results on the table'
      puts "\n \n"
      show_board
    end

  

    if player == $players[1][:name]
      puts "#{player} please choose you position in the board"
      puts "\n \n"
      choose_position
      puts "\n \n"
      puts 'Position:'
      plays[gets.chomp.to_i-1] = $players[1][:token]
      if turn > board.size - 4 && win?(plays,$players[1][:token])
        game_on = false
        congratulate(player) 
       end
    
      player = $players[0][:name]
      turn+= 1
    puts "Turn #{turn}"
    puts 'Current results on the table'
    puts "\n \n"
    show_board
    end
  end
  p plays
end

play(board)
puts " \n \n"

puts 'this is where the players make a move in turns'

puts 'There are Eight possible winning combinations:'
puts 'TOP ROW, MIDDLE ROW, BOTTOM ROW, FIRST_COLUMN, SECOND_COLUMN, THIRD COLUMN, AND THE DIAGONALS '
puts 'The Draw/Tie occurs when the entire board is filled with both X and O and'
puts 'yet no winning combinations can be found'

puts " \n \n"


# make a move
# how to detemine the fate of the game
# reset when the game is over
# validate moves
# get user inputs

# blank out the position that is already played

# choose_position
