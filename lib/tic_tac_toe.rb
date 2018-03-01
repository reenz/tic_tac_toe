class TicTacToe

  def initialize
    @game = Array.new(3) {Array.new(3)}
  end

  def move(type,row,column)
     @game[row][column] = type
  end
end
