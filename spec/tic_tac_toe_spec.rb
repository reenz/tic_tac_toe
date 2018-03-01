require 'tic_tac_toe'

describe TicTacToe do

  subject(:tictactoe) {described_class.new}

  it 'returns the move' do
    expect(tictactoe.move("X",1,1)).to eq "X"
  end

  it 'returns true if all items of a given row are the same' do
    (0..2).each { |i|
      tictactoe.move('x', 2, i)
    }
    expect(tictactoe.game_over?('x')).to eq true
  end

  it 'returns true if all items of a given column are the same' do
    (0..2).each { |i|
       tictactoe.move('x', i, 1)
    }
    expect(tictactoe.game_over?('x')).to eq true
  end

  it 'returns true if all items of a diagonal are the same' do
    tictactoe.move('x', 0, 0)
    tictactoe.move('x', 1, 1)
    tictactoe.move('x', 2, 2)
    expect(tictactoe.game_over?('x')).to eq true
  end

  it 'returns true if all items of a diagonal are the same' do
    tictactoe.move('x', 0, 2)
    tictactoe.move('x', 1, 1)
    tictactoe.move('x', 2, 0)
    expect(tictactoe.game_over?('x')).to eq true
  end

  it 'returns false if it is not a winning situation' do
    tictactoe.move('x', 0, 2)
    tictactoe.move('x', 0, 1)
    tictactoe.move('x', 2, 0)
    expect(tictactoe.game_over?('x')).to eq false
  end


end
