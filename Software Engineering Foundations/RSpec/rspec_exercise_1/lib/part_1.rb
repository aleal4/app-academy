def average(num1, num2)
  average = (num1 + num2) /2.0
  return average
end

def average_array(num)
  num.sum / (num.length * 1.0)
end

def repeat(str, num)
  str * num
#   new_str = ""
#   num.times { new_str += str}
#   new_str
end

def yell(str)
  str.upcase + '!'
end

def alternating_case(sentence)
  words = sentence.split(" ")

  new_words = words.map.with_index do |word, i|
    if i % 2 == 0
      word.upcase
    else
      word.downcase
    end
  end

  new_words.join(" ")
end

