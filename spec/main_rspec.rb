require_relative '../bin/main'
require_relative '../lib/player.rb'
require_relative '../lib/tictactoe.rb'


RSpec.describe 'main methods' do 
    let(:board){['','','','','','','','','']}
    subject{TicTacToe.new(board)}
    
  context '#name_validator' do
    it 'should return an array containing the name of the players entered by the user' do 
      expect(name_validator(subject).class).to eql Array
    end
  end
end
