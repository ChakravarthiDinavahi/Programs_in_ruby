def is_anagram(s, t)
  return false if s.length != t.length

  counts = Hash.new(0)

  s.each_char { |char| counts[char] += 1 }
  t.each_char { |char| counts[char] -= 1 }

  # Check if all counts are zero
  counts.values.all?(0)
end

is_anagram("raaat","tar")
