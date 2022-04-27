def reverser(str, &prc)
  prc.call(str.reverse)
end

def word_changer(str, &prc)
  words = str.split(' ')
  new_words = []

  words.each {|word| new_words << prc.call(word) }

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
  new_array = []

  array.each do |ele|
    if prc_1.call(ele) && prc_2.call(ele)
      new_array << ele
    end
  end
  new_array
end

def alternating_mapper(array, prc_1, prc_2)
  new_array = []

  array.each.with_index do |ele, idx|
    if idx.even?
      new_array << prc_1.call(ele)
    elsif idx.odd?
      new_array << prc_2.call(ele)
    end
  end

  new_array
end