def is_palindrome(s)
  left = 0
  right = s.length - 1
  while left < right
    if s[left].downcase != s[right].downcase
      return false
    end
    left += 1
    right -= 1
  end
  return true
end
