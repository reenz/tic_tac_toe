class TicTacToe

  def initialize
    @game = Array.new(3) {Array.new(3)}
  end

  def move(type,row,column)
     @game[row][column] = type
  end

  def game_over?(type)
    (0...@game.length).each do |idx|
      if row_same?(idx, type)
          return true
      elsif column_same?(idx, type)
          return true
        end
    end
    false
  end

  private

  def row_same?(idx, type)
    @game[idx] == [type, type, type]
  end

  def column_same?(idx, type)
    (@game[0][idx] == type) && (@game[1][idx] == type) && (@game[2][idx] == type)
  end

end
