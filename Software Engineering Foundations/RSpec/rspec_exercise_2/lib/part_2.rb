def palindrome?(string)
  string.each_char.with_index do |char, i|
    if string[i] != string[-i-1]
      return false
    end
  end
  true
end

def substrings(string)
  subs = []
  (0...string.length).each do |start_idk|
    (start_idk...string.length).each do |end_idk|
      subs << string[start_idk..end_idk]
    end
  end
  subs
end

def palindrome_substrings(string)

  
end