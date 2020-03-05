require_relative '../lib/player.rb'
require_relative '../lib/tictactoe.rb'

RSpec.describe Player do
  let(:board) { ['X', 'X', 'X', 'O', '', 'O', '', '', ''] }
  let(:new_board) { ['X', 'X', 'X', 'O', '', 'O', '', 'O', 'O'] }
  let(:tictactoe) { TicTacToe.new(board) }
  let(:player_one) { 'Alexis' }

  let(:player_two) { 'Kip' }
  before { @a_proc = proc { |string| puts string } }
  subject { Player.new(player_one, player_two) }

  describe '#current_player' do
    it 'returns the player name on every turn' do
      expect(subject.current_player(board).class).to eql(Hash)
    end
  end
  describe '#make_move' do
    it "It assings player's token to be place on the given index" do
      expect(subject.make_move(board, 8, 'O')).to eql new_board[8]
    end
  end
  describe '#user_position' do
    it 'returns the position inputed by the player' do
      allow(@a_proc).to receive(:gets).and_return('number from 1 to 9')
    end
  end
  describe '#win_or_draw?' do
    it 'returns true and prints a congratulating message when a player wins' do
      expect(subject.win_or_draw?(6, subject.player[0], @a_proc, board)).to be true
    end
    it 'returns true and prints a draw message when number of turns is 9 and there is no winner' do
      expect(subject.win_or_draw?(9, subject.player[1], @a_proc, board)).to be true
    end
    it 'returns false otherwise' do
      expect(subject.win_or_draw?(1, subject.player[1], @a_proc, board)).to_not be true
    end
  end
  describe '#update_game' do
    it 'puts the board and then return nil' do
      allow(@a_proc).to receive(:gets).and_return('board updated')
    end
  end
end
