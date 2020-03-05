require_relative '../lib/tictactoe.rb'

RSpec.describe TicTacToe do
  let(:board) { ['X', 'X', 'X', 'O', '', 'O', '', '', ''] }
  subject { TicTacToe.new(board) }
  before { @a_proc = proc { |string| puts string } }

  context '#welcome' do
    it 'returns a welcome message' do
      expect(subject.welcome.class).to eql(String)
    end
  end

  context '#welcome_board' do
    it 'returns a welcome message' do
      expect(subject.welcome_board.class).to eql(String)
    end
  end

  context '#show_board' do
    it 'puts a welcome message and then return nil' do
      expect(subject.show_board(@a_proc, board)).to eql(nil)
    end
  end

  context '#choose_position' do
    it 'puts update the position choosen by the player and puts a the updated grid and then  return nil' do
      expect(subject.choose_position(board, @a_proc)).to eql(nil)
    end
  end

  context '#win?' do
    it 'iterates through the elements of a cobination and return true if all the elements are similar indicating there os a winner' do
      expect(subject.win?(board, "X")).to eql true
    end
    it 'iterated through the elements in the combination and returns false if all the elements arent similar' do
      expect(subject.win?(['X', '', '', '', '', '', '', '', ''], 'X')).not_to eql true
    end
  end

  context '#congratulate' do
    it 'should print a congratulate message to the screen and return nil' do
      expect(subject.congratulate('Panchita', @a_proc)).to eql nil
    end
  end

  context '#number_of_turns' do
    it 'returns a number indicating the current turn' do
      expect(subject.number_of_turns(board)).to eql 5
    end
  end

  context '#draw_game' do
    it 'returns true if there are no empty cells and there is no winner' do
      expect(subject.draw_game(['X', 'O', 'X', 'O', 'O', 'X', 'X', 'X', 'O'], 'O')).to_not eql true
    end
    it 'return false if empty cells exist' do
      expect(subject.draw_game(board, 'X')).to eql false
    end
  end
end
