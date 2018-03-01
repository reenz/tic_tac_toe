require 'tic_tac_toe'

describe TicTacToe do

  subject(:tictactoe) {described_class.new}

  it 'returns the move' do
    expect(tictactoe.move("X",1,1)).to eq "X"
  end

  it 'return win if all items of a given row are the same' do
    (0..2).each { |i|
      tictactoe.move('x', 2, i)
    }
    expect(tictactoe.game_over?('x')).to eq true
  end


end
