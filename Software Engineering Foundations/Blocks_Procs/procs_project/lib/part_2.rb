def reverser(string, &prc)
  # reverse string first, then give it into the block
  prc.call(string.reverse)  
end

def word_changer(string, &prc)
  words = string.split(' ')
  new_words = []

  words.each do |word|
    new_words << prc.call(word)
  end

  new_words.join(' ')
end

def greater_proc_value(num, prc_1, prc_2)
  
  num_1 = prc_1.call(num)
  num_2 = prc_2.call(num)

  if num_1 > num_2
    return num_1
  else
    return num_2
  end
end

def and_selector(array, prc_1, prc_2)
  result = []

  array.select do |ele|
    if prc_1.call(ele) && prc_2.call(ele)
      result << ele
    end
  end

  result
end

def alternating_mapper(array, prc_1, prc_2)
  result = []

  array.each_with_index do |ele, idx|
    if idx.even?
      result << prc_1.call(ele)
    else
      result << prc_2.call(ele)
    end
  end

  result
end



