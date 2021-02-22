class WordSearch
  def initialize(board, word)
    @word = word.to_s.split('')
    @board = board
    @search = []
  end

  def process
    @word.each do |letter|
      left_index = @board.index letter
      right_index = @board.reverse.index letter
      if left_index.present? && right_index.present? && left_index <= right_index
        left_operation(letter, left_index)
      else
        right_operation(letter, right_index)
      end
    end
    print_output
  end

  def left_operation(letter, index)
    r = []
    @board += @board.shift(index)
    r << 'LEFT, ' * index + 'LEFT:' + letter
    @search << r
  end

  def right_operation(letter, index)
    r = []
    @board.unshift(*@board.pop(index))
    r << 'RIGHT, ' * index + 'RIGHT:' + letter
    @search << r
  end

  def print_output
    puts @search.join(', ')
  end
end
WordSearch.new(%w[a z c t v a], 'cat').process
