def palindrome?(string)
   string.each_char.with_index do |char, i|
    if string[i] != string[-i-1]
      return false
    end
  end
  true
end

def substrings(string)
  arr = []

  (0...string.length).each do |start_idx|
    (start_idx...string.length).each do |end_idx|
      arr << string[start_idx..end_idx]
    end
  end
  arr
end