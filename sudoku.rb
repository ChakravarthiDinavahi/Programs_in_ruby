class Sudoku
  def initialize(board, row, column)
    @board = board
    @row_size = row
    @column_size = column
  end

  def solve
    0..@row_size.each do |i|
      0..@column_size.each do |j|
        if board[i][j] == 0
          for a in 0..@row_size
            board[i][j] = k
            if(is_valid(board, i,j) && solve)
              return true
            end
            board[i][j] = 0
          end
          return false
        end
      end
    end
    return true
  end

  def is_valid(board, row, column)
    return rowConstraint(board, row) && columnConstraint(board, column) && subsectionConstraint(board, row, column)
  end

  def rowConstraint(board, row, column)
    
  end

  def print_solution
    P "Solution of Sudoku"
    p @board
  end

end
