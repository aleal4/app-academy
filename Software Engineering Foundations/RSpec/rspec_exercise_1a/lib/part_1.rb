def average(n1, n2) 
  (n1 + n2) / 2.0
end

def average_array(array)
  array.sum / (array.length * 1.0)
end

def repeat(str, num)
  str * num
end

def yell(str)
  str.upcase + '!'
end

def alternating_case(str)
  arr = str.split(' ')

  new_words = arr.map.with_index do |word, index|
    if index % 2 == 0
      word.upcase 
    else
      word.downcase
    end
  end

  new_words.join(' ')
end