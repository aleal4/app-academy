def palindrome?(string)
   string.each_char.with_index do |char, i|
    if string[i] != string[-i-1]
      return false
    end
  end
  true
end