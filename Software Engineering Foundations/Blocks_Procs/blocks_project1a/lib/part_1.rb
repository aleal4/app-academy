def select_even_nums(array)
  array.select(&:even?)
end

def reject_puppies(array)
  array.reject{|puppies| puppies['age'] <= 2}
end

def count_positive_subarrays(array)
  array.count {|arr| arr.sum > 0 }
end

def aba_translate(string)
  vowels = 'aeiou'
  new_word = ''

  string.each_char do |char|
    if vowels.include?(char)
      new_word += char + 'b' + char
    else
      new_word += char
    end
  end
  new_word
end

def aba_array(array)
  new_arr = array.map do |array|
    aba_translate(array)
  end
  new_arr
end