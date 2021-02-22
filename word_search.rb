class WordSearch
  def initialize(board, word)
    @word = word.to_s.split('')
    @board = board
    @search = {}
  end

  def process
    @word.each do |letter|
      index1 = @board.index letter
      index2 = @board.reverse.index letter
      if index1.present? && index2.present? && index1 <= index2
        left_operation(letter)
      else
        right_operation(letter)
      end
    end
    print_output
  end

  def left_operation(letter)
    r = []
    r << 'LEFT'

    @board.each do |_l|
      k = @board.shift
      break if letter == k

      @board << k

      r << 'LEFT'
      @search[letter] = r
    end
  end

  def right_operation(letter)
    r = []
    r << 'RIGHT'

    @board.each do |_l|
      k = @board.pop
      break if letter == k

      @board.unshift(k)

      r << 'RIGHT'
      @search[letter] = r
    end
  end

  def print_output
    @search.each do |k, v|
      puts v.join(', ') + ':' + k
    end
  end
end
WordSearch.new(%w[a z c t v a], 'cat').process
