  def is_palindrome?(input_string)
    input_string = input_string.downcase.scan(/\w/)
    input_string == input_string.reverse
  end

is_palindrome?("eye")
