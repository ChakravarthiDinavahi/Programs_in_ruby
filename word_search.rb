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
        left_operation(letter)
      else
        right_operation(letter)
      end
    end
    print_output
  end

  def left_operation(letter)
    r = []

    @board.each do |_l|
      k = @board.shift
      break if letter == k

      @board << k

      r << 'LEFT'
    end
    r << 'LEFT:' + letter
    @search << r
  end

  def right_operation(letter)
    r = []

    @board.each do |_l|
      k = @board.pop
      break if letter == k

      @board.unshift(k)

      r << 'RIGHT'
    end
    r << 'RIGHT:' + letter
    @search << r
  end

  def print_output
    @search.each do |k|
      puts k.join(', ')
    end
  end
end
WordSearch.new(%w[a z c t v a], 'cat').process
