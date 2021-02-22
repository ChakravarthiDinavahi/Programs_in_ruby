class WordSearch
  def initialize(board, word)
    @word = word.to_s.split('')
    @board = board
  end

  def process
    search = {}
    @word.each do |letter|
      r = []
      index1 = @board.index letter
      index2 = @board.reverse.index letter
      if index1.present? && index2.present? && index1 <= index2
        @board.each do |_l|
          k = @board.shift
          break if letter == k

          @board << k

          r << 'LEFT'
          search[letter] = r
        end
      else
        @board.each do |_l|
          k = @board.pop
          break if letter == k

          @board.unshift(k)

          r << 'RIGHT'
          search[letter] = r
        end
      end
    end
    search.each do |k, v|
      puts v.join(', ') + ' :' + k
    end
  end
end
WordSearch.new(%w[a z c t v a], 'cat').process
