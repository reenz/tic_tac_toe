require 'tic_tac_toe'

describe TicTacToe do

  subject(:tictactoe) {described_class.new}

  it 'returns the move' do
    expect(tictactoe.move("X",1,1)).to eq "X"
  end
end
