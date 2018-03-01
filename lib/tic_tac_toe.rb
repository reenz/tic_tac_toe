class TicTacToe

  def initialize
    @game = Array.new(3) {Array.new(3)}
  end

  def move(type,row,column)
     @game[row][column] = type
  end

  def game_over?(type)
    # for idx in 0..2 do
    #   if row_same?(idx, type)
    #     return true
    #   end
    # end
    (0..2).each do |idx|
      return true if row_same?(idx, type)
    end
    false
  end

  private

  def row_same?(row_idx, type)
    @game[row_idx] == [type, type, type]
  end

end
