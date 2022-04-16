def partition(array, number)
  less = []
  greater = []

  array.each do |ele| 
    if ele < number
      less << ele
    else 
      greater << ele
    end
  end

    [less, greater]
end

def merge(hash1, hash2)
  new_hash = {}
  hash1.each {|key, value| new_hash[key] = value }
  hash2.each {|key, value| new_hash[key] = value }
  new_hash
end

def censor(sentence, curse_words)
  words = sentence.split(' ')

  new_words = words.map do |word|
    if curse_words.include?(word.downcase)
      star_vowels(word)
    else
      word
    end
  end

  new_words.join(' ')
end

def star_vowels(string)
  vowels = 'aeiou'
  new_str = ''

  string.each_char do |char|
    if vowels.include?(char.downcase)
      new_str += '*'
    else
      new_str += char
    end
  end

  new_str
end

def power_of_two?(number)
  product = 1

  while product < number
    product *= 2
  end

  product == number
end