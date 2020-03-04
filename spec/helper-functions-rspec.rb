require_relative '../lib/helper.rb'
require_relative '../lib/tictactoe.rb'

RSpec.describe Helperable do
  let(:board) { ['x', 'x', '', 'x', 'o', 'x', 'o', '', ''] }
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
end
