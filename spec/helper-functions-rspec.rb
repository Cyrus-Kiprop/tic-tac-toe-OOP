require_relative '../lib/helper.rb'
require_relative '../lib/tictactoe.rb'

RSpec.describe Helperable do
  let(:board) { ['X', 'X', '', 'X', 'O', 'X', 'O', '', ''] }
  subject { TicTacToe.new(board) }
  describe '#valid_name?' do
    it 'returns true if
            the name object class is a string and is not empty' do
      expect(subject.valid_name?('Alexis')).to_not eql('Alexis'.empty?)
    end
  end

  describe '#valid_move?' do
    it 'returns true if the number given by the player
           is between 1 -- 9 (0..8 index position)' do
      expect(subject.valid_move?(board, 2)).to eql true
    end
  end

  describe '#position_taken' do
    it 'return true if the position is taken on the board'do
      expect(subject.position_taken?(board, 3)).to be true
    end
    it 'return false if the position on the board is empty' do
      expect(subject.position_taken?(board, 2)).to be false
    end
  end

  describe '#player_names' do
    it 'returns a string from the user ' do
      allow_any_instance_of(Kernel).to receive(:gets).and_return('class')
      expect(subject.player_names).to eq('class')
      end
    end

  describe '#next_line' do 
    it 'returns two empty lines successively' do
      expect(subject.next_line()).to eql "\n \n"
    end
  end

end
